import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/employee/home/model/services-categories_model.dart';
import 'package:future_hub/employee/orders/cubit/employee_services_branches_cubit.dart';
import 'package:go_router/go_router.dart';

import '../../l10n/app_localizations.dart';

class ServicesListWidget extends StatefulWidget {
  const ServicesListWidget({super.key});

  @override
  State<ServicesListWidget> createState() => _ServicesListWidgetState();
}

class _ServicesListWidgetState extends State<ServicesListWidget> {
  late Future<ServicesCategories> _servicesFuture;
  final DioHelper dio = DioHelper();

  @override
  void initState() {
    super.initState();
    _servicesFuture = _fetchServices();
  }

  Future<ServicesCategories> _fetchServices() async {
    final token = await CacheManager.getToken();
    try {
      final response = await dio.getData(
        url: ApiConstants.servicesCategory,
        token: token,
      );
      return ServicesCategories.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load services: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            t.serviceYou,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          FutureBuilder<ServicesCategories>(
            future: _servicesFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (!snapshot.hasData ||
                  snapshot.data!.categories.isEmpty) {
                return Text(
                  t.soon,
                  style: const TextStyle(fontSize: 30),
                );
              }

              // Calculate the number of rows needed (2 items per row)
              final itemCount = snapshot.data!.categories.length;
              final rowCount = (itemCount / 2).ceil();

              return GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 2,
                ),
                itemCount: itemCount,
                itemBuilder: (context, index) {
                  final service = snapshot.data!.categories[index];
                  return GestureDetector(
                    onTap: () async {
                      context
                          .read<ServicesPunchersCubit>()
                          .resetPunchersState(0);
                      context
                          .read<ServicesPunchersCubit>()
                          .loadServicesPunchers(
                            id: snapshot.data!.categories[index].id,
                            refresh: true,
                          );
                      context.push(
                        '/employees/services-branches',
                        extra: snapshot.data!.categories[index],
                      );
                    },
                    child: _ServiceItem(
                      title: CacheManager.locale! == const Locale("en")
                          ? snapshot.data!.categories[index].title.en
                          : snapshot.data!.categories[index].title.ar,
                      imageUrl: snapshot.data!.categories[index].image,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ServiceItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const _ServiceItem({
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 70, // Fixed height for each item
      decoration: BoxDecoration(
        color: const Color(0xffFBFBFB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error, size: 50),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
