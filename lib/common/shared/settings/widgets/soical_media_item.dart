import 'package:flutter/material.dart';
import 'package:future_hub/common/info/models/Support.dart';
import 'package:url_launcher/url_launcher.dart';

// Add this widget class in your file
class SocialMediaIcons extends StatelessWidget {
  final SupportData supportData;

  const SocialMediaIcons({super.key, required this.supportData});

  @override
  Widget build(BuildContext context) {
    // Create list of social media items with non-empty URLs
    final socials = [
      if (supportData.whatsApp.isNotEmpty)
        SocialMediaItem(
          iconPath: 'assets/icons/whatsapp.png',
          url: supportData.whatsApp,
        ),
      if (supportData.facebook.isNotEmpty)
        SocialMediaItem(
          iconPath: 'assets/icons/facebook.png',
          url: supportData.facebook,
        ),
      if (supportData.twitter.isNotEmpty)
        SocialMediaItem(
          iconPath: 'assets/icons/twitter.png',
          url: supportData.twitter,
        ),
      // if (supportData.youTube.isNotEmpty)
      //   SocialMediaItem(
      //     iconPath: 'assets/icons/youtube.png',
      //     url: supportData.youTube,
      //   ),
      if (supportData.linkedIn.isNotEmpty)
        SocialMediaItem(
          iconPath: 'assets/icons/linkedin.png',
          url: supportData.linkedIn,
        ),
      if (supportData.instagram.isNotEmpty)
        SocialMediaItem(
          iconPath: 'assets/icons/instagram.png',
          url: supportData.instagram,
        ),
    ];

    return Container(
      width: 335,
      height: 96,
      decoration: BoxDecoration(
        color: const Color(0xFFFBFBFB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: socials.map((social) {
          return GestureDetector(
            onTap: () => _launchUrl(social.url),
            child: Image.asset(
              social.iconPath,
              width: 48,
              height: 48,
            ),
          );
        }).toList(),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    try {
      // Clean and format URLs
      String processedUrl = url.trim();

      // Handle WhatsApp numbers
      if (processedUrl.contains("whatsapp") || processedUrl.contains("+")) {
        // Clean phone number format
        final phone = processedUrl.replaceAll(RegExp(r'[^0-9+]'), '');
        final whatsappUrl = "https://wa.me/$phone";

        if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
          await launchUrl(Uri.parse(whatsappUrl));
          return;
        }
        throw 'WhatsApp not installed or invalid number';
      }

      // Handle email addresses
      if (processedUrl.contains("@")) {
        final emailUrl = "mailto:${processedUrl.replaceAll(' ', '')}";
        if (await canLaunchUrl(Uri.parse(emailUrl))) {
          await launchUrl(Uri.parse(emailUrl));
          return;
        }
        throw 'No email client installed';
      }

      // Handle social media URLs
      if (!processedUrl.startsWith('http')) {
        processedUrl = 'https://$processedUrl';
      }

      final parsedUrl = Uri.parse(processedUrl);

      if (await canLaunchUrl(parsedUrl)) {
        await launchUrl(parsedUrl);
      } else {
        throw 'No app available to handle this URL';
      }
    } catch (e) {
      throw 'No app available to handle this URL $e';
    }
  }
}

// Add this model class
class SocialMediaItem {
  final String iconPath;
  final String url;

  SocialMediaItem({required this.iconPath, required this.url});
}
