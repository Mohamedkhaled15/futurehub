import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';

import '../shared/router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  List<Widget> _pages = [];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _nextPage({bool skip = false}) {
    debugPrint(_currentIndex.toString());
    debugPrint(skip.toString());
    debugPrint(_pages.length.toString());

    if (skip) {
      router.go('/login');
      CacheManager.saveData('onBoarding', 'true');
      return;
    }
    if (_currentIndex < _pages.length - 1) {
      _pageController.animateToPage(
        _currentIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else if (_currentIndex + 1 == _pages.length) {
      router.go('/login');
      CacheManager.saveData('onBoarding', 'true');
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    _pages = [
      OnboardingPage(
        image: 'assets/images/onboarding_image1.png',
        title: t.securityData,
        description: t.e_Payment,
      ),
      OnboardingPage(
        image: 'assets/images/onboarding_image1.png',
        title: t.security,
        description: t.securityDetails,
      ),
      OnboardingPage(
        image: 'assets/images/onboarding_image1.png',
        title: t.products,
        description: t.productDetails,
      ),
    ];
    return Scaffold(
      body: Stack(children: [
        PageView(
          reverse: Directionality.of(context) == TextDirection.rtl,
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: _pages,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05,
              horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/app-bar-logo.svg',
                height: 35,
              ),
              InkWell(
                onTap: () => _nextPage(skip: true),
                child: Text(
                  t.skip,
                  style: const TextStyle(
                      fontSize: 32,
                      color: Palette.primaryColor,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 70,
          left: 24,
          right: 24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomPaint(
                painter: CircleProgressPainter(_currentIndex + 1, 3),
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: _nextPage,
                      child: SvgPicture.asset('assets/images/next.svg'),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  int reverseIndex =
                      Directionality.of(context) == TextDirection.ltr
                          ? index
                          : 2 - index;
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    height: 15.0,
                    width: 15.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == reverseIndex
                          ? Palette.primaryColor
                          : Palette.textFeildBorder.withOpacity(0.6),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  String image;
  String title;
  String description;

  OnboardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.14),
          Image.asset(image),
          const SizedBox(height: 20),
          Text(
            maxLines: 2,
            title,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyLarge!.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),
          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 25, color: Palette.greyColor),
          ),
        ],
      ),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  final int currentPage;
  final int totalPage;

  CircleProgressPainter(this.currentPage, this.totalPage);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Palette.textFeildBorder
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    Paint progressPaint = Paint()
      ..color = Palette.primaryColor
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;

    canvas.drawCircle(center, radius, paint);

    double angle =
        2 * 3.14159265358979323846264338327950288 * (currentPage / totalPage);
    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        -3.14159265358979323846264338327950288 / 2,
        angle,
        false,
        progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
