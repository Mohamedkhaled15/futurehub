import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';

class EmployeeHomeCarousel extends StatefulWidget {
  const EmployeeHomeCarousel({required this.isDrawerOpen, super.key});
  final bool isDrawerOpen;

  @override
  State<EmployeeHomeCarousel> createState() => _EmployeeHomeCarouselState();
}

class _EmployeeHomeCarouselState extends State<EmployeeHomeCarousel> {
  List<Widget> images = [];
  int index = 0;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchSliderImages();
    CacheManager.addListener(() {
      fetchSliderImages();
    });
  }

  @override
  void dispose() {
    CacheManager.removeListener();
    super.dispose();
  }

  Future<void> fetchSliderImages() async {
    try {
      final token = await CacheManager.getToken();
      final DioHelper dio = DioHelper();
      final response = await dio.getData(
        url: ApiConstants.silder,
        token: token,
      );

      if (response.statusCode == 200 && response.data['success'] == true) {
        final List<dynamic>? sliderData = response.data['data'];

        if (sliderData == null || sliderData.isEmpty) {
          debugPrint("No slider data found, using static images.");
        } else {
          final List<Widget> sliderImages = sliderData.map((slider) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                CacheManager.locale! == const Locale("en")
                    ? slider['image']['en']
                    : slider['image']['ar'],
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
            );
          }).toList();

          setState(() {
            images = sliderImages;
            isLoading = false;
          });
          return;
        }
      } else {
        debugPrint(
            "Failed to fetch slider images: ${response.data['message']}");
      }
    } catch (e) {
      debugPrint("Error fetching slider images: $e");
    }

    setState(() {
      images = [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/images/banner1.png',
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/images/banner2.png',
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/images/banner3.png',
            fit: BoxFit.cover,
          ),
        ),
      ];
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 180, // Adjust height as needed
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.9,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  onPageChanged: (index, reason) {
                    setState(() {
                      this.index = index;
                    });
                  },
                ),
                items: images,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, bottom: 30.0),
                child: DotsIndicator(
                  decorator: DotsDecorator(
                      color: Colors.white.withOpacity(0.1),
                      spacing: const EdgeInsets.all(1),
                      activeColor: Colors.white,
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      activeSize: const Size(25.0, 9.0),
                      size: const Size(11, 8)),
                  dotsCount: images.length,
                  position: index,
                ),
              ),
            ],
          );
  }
}
