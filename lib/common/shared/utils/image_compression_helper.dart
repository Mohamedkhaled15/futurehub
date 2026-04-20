import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;

class ImageCompressionHelper {
  static Future<File> compressImage(File file) async {
    if (file.path.isEmpty || !await file.exists()) {
      return file;
    }
    // If file is already < 1MB, return it
    final length = await file.length();
    if (length <= 1024 * 1024) {
      return file;
    }

    // Process in isolate
    final Uint8List? result = await compute(_compressTask, file.readAsBytesSync());

    if (result == null) return file; // Fallback if compression fails

    // To prevent the OS from aggressively deleting the cache file before upload,
    // we save it in a dedicated temporary subdirectory.
    final Directory tempDir = await Directory.systemTemp.createTemp('petromine_img_');
    final String newPath = '${tempDir.path}/${file.path.split('/').last}_compressed.jpg';
    final File newFile = File(newPath);
    await newFile.writeAsBytes(result);
    return newFile;
  }

  static Uint8List? _compressTask(Uint8List bytes) {
    try {
      img.Image? image = img.decodeImage(bytes);
      if (image == null) return null;

      // Resize if too big (optional but recommended for massive camera photos)
      if (image.width > 1200 || image.height > 1200) {
        image = img.copyResize(image, width: 1200, height: 1200, maintainAspect: true);
      }

      // Compress
      int quality = 85;
      List<int> compressed = img.encodeJpg(image, quality: quality);

      // Loop to reduce quality until < 1MB
      while (compressed.length > 1024 * 1024 && quality > 10) {
        quality -= 10;
        compressed = img.encodeJpg(image, quality: quality);
      }
      return Uint8List.fromList(compressed);
    } catch (e) {
      return null;
    }
  }
}
