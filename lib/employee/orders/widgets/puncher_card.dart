import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/shared/palette.dart';

class PuncherCard extends StatelessWidget {
  const PuncherCard({
    super.key,
    required this.title,
    this.imageUrl,
    this.showDirection = false,
    required this.location,
    this.lat,
    this.lng,
    this.address,
    required this.distance,
  });

  final String title;
  final String? imageUrl;
  final bool showDirection;
  final String location;
  final String? lat;
  final String? lng;
  final String distance;
  final String? address;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.sizeOf(context).width;
    final t = AppLocalizations.of(context)!;
    const primaryColor = Color(0xFF55217F); // #55217F

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Container with distance badge
              Stack(
                alignment: Alignment.topRight,
                children: [
                  // Add padding to push image down
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ), // Adjust based on badge height
                    child: Container(
                      height: width * 0.25,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primaryColor,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: imageUrl ?? "",
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Distance badge
                  Container(
                    margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/location-d.svg",
                          width: 10,
                          height: 10,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          distance,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 12.0),
              // Main Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15.0),

                    // Title and Directions Button Row
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            // overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            title,
                            style: theme.textTheme.bodyLarge!.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Palette.primaryColor,
                            ),
                          ),
                        ),
                        if (lat != null && lng != null)
                          const SizedBox(
                            width: 20,
                          ),
                        Container(
                          width: 100,
                          height: 30,
                          // margin: const EdgeInsets.only(left: 6),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () => _openGoogleMaps(
                              double.parse(lat!),
                              double.parse(lng!),
                            ),
                            child: Text(
                              t.dirctions,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      location,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: const Color.fromRGBO(160, 160, 160, 1),
                        fontSize: 16,
                      ),
                    ),
                    if (address != null && address!.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          address!,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.25),
          thickness: 1,
          endIndent: 10,
          indent: 10,
        ),
      ],
    );
  }

  void _openGoogleMaps(double lat, double lng) async {
    final googleMapsUrl =
        "https://www.google.com/maps/search/?api=1&query=$lat,$lng";
    final appleMapsUrl = "https://maps.apple.com/?q=$lat,$lng";

    if (await canLaunchUrl(Uri.parse(googleMapsUrl))) {
      await launchUrl(Uri.parse(googleMapsUrl));
    } else if (await canLaunchUrl(Uri.parse(appleMapsUrl))) {
      await launchUrl(Uri.parse(appleMapsUrl));
    } else {
      throw "Could not launch URL";
    }
  }
}
