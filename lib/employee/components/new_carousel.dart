import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:go_router/go_router.dart';

class EmployeeHomeOfferCarousel extends StatefulWidget {
  const EmployeeHomeOfferCarousel({required this.isDrawerOpen, super.key});
  final bool isDrawerOpen;

  @override
  State<EmployeeHomeOfferCarousel> createState() =>
      _EmployeeHomeOfferCarouselState();
}

class _EmployeeHomeOfferCarouselState extends State<EmployeeHomeOfferCarousel> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> images = [
      GestureDetector(
        onTap: () {
          // Navigate to the new order screen when the first image is tapped
          context.push('/employee/new-order');
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/images/foul.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          'assets/images/exmine.png',
          fit: BoxFit.contain,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          'assets/images/wheels.png',
          fit: BoxFit.contain,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          'assets/images/care.png',
          fit: BoxFit.contain,
        ),
      )
    ];
    return Column(
      children: [
        SizedBox(
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              clipBehavior: Clip.hardEdge,
              viewportFraction: 0.82,
              enlargeFactor: 0.3,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 10),
              onPageChanged: (index, reason) {
                setState(() {
                  this.index = index;
                });
              },
            ),
            items: images,
          ),
        ),
        Transform.translate(
          offset: Offset(0, -MediaQuery.of(context).size.height * 0.04),
          child: DotsIndicator(
            decorator: DotsDecorator(
                color: const Color.fromRGBO(0, 93, 163, 0.1),
                spacing: const EdgeInsets.all(1),
                activeColor: Palette.primaryColor,
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                activeSize: const Size(25.0, 9.0),
                size: const Size(11, 8)),
            dotsCount: images.length,
            position: index.toDouble(),
          ),
        )
      ],
    );
  }
}
