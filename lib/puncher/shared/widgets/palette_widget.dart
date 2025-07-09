import 'package:flutter/material.dart';

class VehiclePlateWidget extends StatelessWidget {
  final String arabicNumbers;
  final String arabicLetters;
  final String englishNumbers;
  final String englishLetters;
  final String countryCode;

  const VehiclePlateWidget({
    required this.arabicNumbers,
    required this.arabicLetters,
    required this.englishNumbers,
    required this.englishLetters,
    this.countryCode = "KSA",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          // Green KSA Section
          Container(
            width: MediaQuery.of(context).size.width / 8,
            height: 100,
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.white, size: 20),
                const SizedBox(height: 4),
                Text(
                  countryCode,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Plate Details Section
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5),
              ),
              child: Row(
                children: [
                  // Arabic and English Letters Section
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: _buildTextRow(
                            arabicLetters,
                            englishLetters,
                            alignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                    width: 1,
                  ),
                  // Arabic and English Numbers Section
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: _buildTextRow(
                            arabicNumbers,
                            englishNumbers,
                            alignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextRow(String arabic, String english,
      {MainAxisAlignment alignment = MainAxisAlignment.start}) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        Text(
          arabic,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          english,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
