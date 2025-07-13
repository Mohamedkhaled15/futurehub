import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CarouselExample extends StatefulWidget {
  const CarouselExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CarouselExampleState createState() => _CarouselExampleState();
}

class _CarouselExampleState extends State<CarouselExample> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: 5, // Number of items
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: _pageController,
                builder: (context, child) {
                  double value = 1.0;
                  if (_pageController.position.haveDimensions) {
                    value = _pageController.page! - index;
                    value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                  }
                  return Center(
                    child: SizedBox(
                      height: Curves.easeOut.transform(value) * 300,
                      width: Curves.easeOut.transform(value) * 250,
                      child: child,
                    ),
                  );
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/banner.png', // Replace with your image assets
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Item $index',
                        style: const TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currentPage.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            activeColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}
