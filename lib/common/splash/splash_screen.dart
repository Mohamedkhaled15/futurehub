import 'package:flutter/material.dart';

import '../shared/palette.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  bool visibility = false;

  @override
  void initState() {
    setState(() {
      // Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        visibility = true;
      });
    });
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Palette.whiteColor,
            ),
          ),
          Center(
            child: AnimatedOpacity(
              opacity: visibility ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 900),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Image.asset(
                  "assets/images/logo.png", filterQuality: FilterQuality.none, // Disable mipmapping
                  isAntiAlias: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget splashScreen() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Palette.primaryColor,
            ),
          ),
          Center(
            child: AnimatedOpacity(
              opacity: visibility ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1100),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Image.asset(
                  "assets/images/logo.png", filterQuality: FilterQuality.none, // Disable mipmapping
                  isAntiAlias: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
