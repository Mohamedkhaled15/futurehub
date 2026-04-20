import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:image/image.dart' as img;
import 'package:intl/intl.dart';

class ImageWatermarkHelper {
  /// Adds a watermark with date, time, and lat/lng to the given [imageFile].
  /// Returns a new [File] with the watermark applied.
  static Future<File> addWatermark(File imageFile) async {
    // Guard: return original file if path is empty or file doesn't exist
    if (imageFile.path.isEmpty || !await imageFile.exists()) {
      return imageFile;
    }

    // 1. Get current date/time
    final now = DateTime.now();
    final dateStr = DateFormat('yyyy-MM-dd').format(now);
    final timeStr = DateFormat('HH:mm:ss').format(now);

    // 2. Get current location (non-blocking — fallback to N/A)
    String latStr = 'N/A';
    String lngStr = 'N/A';
    try {
      final position = await MapServices.getCurrentLocation();
      if (position != null) {
        latStr = position.latitude.toStringAsFixed(6);
        lngStr = position.longitude.toStringAsFixed(6);
      }
    } catch (_) {
      // Keep N/A defaults
    }

    final line1 = 'Date: $dateStr   Time: $timeStr';
    final line2 = 'Lat: $latStr   Lng: $lngStr';

    // 3. Process image in isolate to avoid blocking the UI thread
    final bytes = await imageFile.readAsBytes();
    final Uint8List? result = await compute(
      _applyWatermark,
      _WatermarkParams(imageBytes: bytes, line1: line1, line2: line2),
    );

    if (result == null) return imageFile; // Fallback if processing fails

    // 4. Save to a dedicated temp directory to protect against aggressive OS cache deletion
    final Directory tempDir = await Directory.systemTemp.createTemp('petromine_watermark_');
    final String newPath = '${tempDir.path}/${imageFile.path.split('/').last}_watermarked.jpg';
    final File newFile = File(newPath);
    await newFile.writeAsBytes(result);
    return newFile;
  }

  /// Isolate-safe function that draws watermark text on the image bytes.
  static Uint8List? _applyWatermark(_WatermarkParams params) {
    try {
      img.Image? image = img.decodeImage(params.imageBytes);
      if (image == null) return null;

      img.BitmapFont font;
      int padding;
      int lineHeight;

      // Select font proportionately based on image width
      if (image.width < 500) {
        font = img.arial14;
        padding = 6;
        lineHeight = 18;
      } else if (image.width < 1000) {
        font = img.arial24;
        padding = 10;
        lineHeight = 28;
      } else {
        font = img.arial48;
        padding = 20;
        lineHeight = 55;
      }

      // Draw semi-transparent dark background rectangle at the bottom
      final bgHeight = (lineHeight * 2) + (padding * 3);
      final bgTop = image.height - bgHeight;

      // Draw background overlay
      img.fillRect(
        image,
        x1: 0,
        y1: bgTop,
        x2: image.width,
        y2: image.height,
        color: img.ColorRgba8(0, 0, 0, 160), // semi-transparent black
      );

      // Draw line 1 (date & time)
      final y1 = bgTop + padding;
      img.drawString(
        image,
        params.line1,
        font: font,
        x: padding,
        y: y1,
        color: img.ColorRgba8(255, 255, 255, 255), // white
      );

      // Draw line 2 (lat & lng)
      final y2 = y1 + lineHeight;
      img.drawString(
        image,
        params.line2,
        font: font,
        x: padding,
        y: y2,
        color: img.ColorRgba8(255, 255, 255, 255), // white
      );

      return Uint8List.fromList(img.encodeJpg(image, quality: 95));
    } catch (e) {
      return null;
    }
  }
}

/// Data class to pass parameters to the isolate function.
class _WatermarkParams {
  final Uint8List imageBytes;
  final String line1;
  final String line2;

  _WatermarkParams({
    required this.imageBytes,
    required this.line1,
    required this.line2,
  });
}
