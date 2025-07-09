import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/labeled_icon_placeholder.dart';
import 'package:future_hub/common/shared/widgets/services_map_widget.dart';
import 'package:future_hub/employee/home/model/services-categories_model.dart';
import 'package:future_hub/employee/orders/cubit/employee_services_barnches_state.dart';
import 'package:future_hub/employee/orders/widgets/puncher_card.dart';
import 'package:go_router/go_router.dart';

import '../../../common/shared/widgets/loading_indicator.dart';
import '../cubit/employee_services_branches_cubit.dart';

class EmployeeServicesBranchesScreen extends StatefulWidget {
  final Categories categories;
  const EmployeeServicesBranchesScreen({super.key, required this.categories});

  @override
  State<EmployeeServicesBranchesScreen> createState() =>
      _EmployeeServicesBranchesScreenState();
}

class _EmployeeServicesBranchesScreenState
    extends State<EmployeeServicesBranchesScreen> {
  Future<void> _onLoadMore() async {
    return BlocProvider.of<ServicesPunchersCubit>(context)
        .loadServicesPunchers(id: widget.categories.id);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;

    return BlocConsumer<ServicesPunchersCubit, EmployeeServicesBranchesState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = ServicesPunchersCubit.get(context);
        if (state is EmployeeServicesBranchesLoadingState &&
            state.isFirstFetch) {
          return const PaginatorLoadingIndicator();
        }
        bool canLoadMore = true;
        if (state is EmployeeServicesBranchesLoadingState) {
          // cubit.changeCubitPunchers(state.oldPunchers);
        } else if (state is EmployeeServicesBranchesLoadedState) {
          // cubit.changeCubitPunchers(state.punchers);
          // canLoadMore = state.canLoadMore;
        }
        return BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            final user = (state as AuthSignedIn).user;
            if (cubit.screenIndex == 0 && cubit.servicePunchers.isEmpty) {
              return Scaffold(
                appBar: FutureHubAppBar(
                  title: Text(t.services_provider),
                  context: context,
                ),
                body: Center(
                  child: LabeledIconPlaceholder(
                    icon: SvgPicture.asset('assets/images/orders.svg'),
                    label: t.soon,
                  ),
                ),
              );
            }
            return Scaffold(
              body: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 24.0),
                      if (cubit.screenIndex == 0) ...[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          child: Text(
                            t.branches_near,
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Palette.blackColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 220, // Keep the same height
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: min(5, cubit.servicePunchers.length),
                            itemBuilder: (context, index) {
                              final station = cubit.servicePunchers[index];
                              return GestureDetector(
                                onTap: () {
                                  context.push(
                                      '/employee/puncher-screen/${cubit.servicePunchers[index].id}?categoryId=${widget.categories.id}',
                                      extra: CacheManager.locale! ==
                                              const Locale("en")
                                          ? cubit.servicePunchers[index].title
                                                  ?.en ??
                                              ""
                                          : cubit.servicePunchers[index].title
                                                  ?.ar ??
                                              "");
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: SizedBox(
                                    width: 160, // Same width
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: const Color(
                                              0xFFEEEEEE), // #EEEEEE border
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Image at top
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.network(
                                                station.image ?? '',
                                                height: 100,
                                                width: double.infinity,
                                                fit: BoxFit.cover,
                                                errorBuilder: (context, error,
                                                        stackTrace) =>
                                                    Container(
                                                  height: 100,
                                                  color: Colors.grey[200],
                                                  child: const Icon(Icons
                                                      .image_not_supported),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 12),
                                            // Title and Distance in a row
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  CacheManager.locale! ==
                                                          const Locale("en")
                                                      ? station.title?.en ?? ''
                                                      : station.title?.ar ?? '',
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xff55217F)),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  "${station.distanceInKm}",
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xff55217F),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 12),

                                            // Address below
                                            Text(
                                              CacheManager.locale! ==
                                                      const Locale("en")
                                                  ? station.address?.en ??
                                                      '75HP+MVF, Al-Thuqbah, Al Khobar 34623'
                                                  : station.address?.ar ??
                                                      "75HP+MVF, Al-Thuqbah, Al Khobar 34623",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xffA0A0A0),
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            t.branches,
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Palette.blackColor),
                          ),
                        ),
                      ],
                      // final vehicles = (state as AuthSignedIn)
                      //     .user
                      //     .vehicles
                      //     ?.expand((list) => list)
                      //     .toList() ??
                      // [];
                      // if (vehicles.length == 1) {
                      // selectedVehicleId = vehicles.first.id;
                      // selectedPlateNumber = vehicles.first.plateNumbers;
                      // }
                      Expanded(
                        child: cubit.screenIndex == 0
                            ? InfiniteListView(
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      context.push(
                                          '/employee/puncher-screen/${cubit.servicePunchers[index].id}?categoryId=${widget.categories.id}',
                                          extra: CacheManager.locale! ==
                                                  const Locale("en")
                                              ? cubit.servicePunchers[index]
                                                      .title?.en ??
                                                  ""
                                              : cubit.servicePunchers[index]
                                                      .title?.ar ??
                                                  "");
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24),
                                      child: PuncherCard(
                                        lat: cubit
                                            .servicePunchers[index].latitude,
                                        lng: cubit
                                            .servicePunchers[index].longitude,
                                        address: CacheManager.locale! ==
                                                const Locale("en")
                                            ? cubit.servicePunchers[index]
                                                .address?.en
                                            : cubit.servicePunchers[index]
                                                .address?.ar,
                                        location:
                                            cubit.servicePunchers[index].city!,
                                        distance:
                                            "${cubit.servicePunchers[index].distanceInKm} km" ??
                                                "",
                                        title: CacheManager.locale! ==
                                                const Locale("en")
                                            ? cubit.servicePunchers[index].title
                                                    ?.en ??
                                                ""
                                            : cubit.servicePunchers[index].title
                                                    ?.ar ??
                                                "",
                                        imageUrl:
                                            cubit.servicePunchers[index].image,
                                      ),
                                    ),
                                  );
                                },
                                itemCount: cubit.servicePunchers.length,
                                canLoadMore: canLoadMore,
                                onLoadMore: _onLoadMore,
                                // empty: LabeledIconPlaceholder(
                                //   icon: SvgPicture.asset(
                                //       'assets/images/orders.svg'),
                                //   label: t.soon,
                                // ),
                              )
                            : ServicesMapWidget(
                                categories: widget.categories,
                                user: user,
                                cubit: cubit,
                              ),
                      ),
                    ],
                  ),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                      child: Container(
                        color: Palette.whiteColor.withOpacity(0.6),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.05,
                            bottom: size.height * 0.04,
                            left: size.width * 0.02,
                            right: size.width * 0.02,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              cubit.screenIndex == 0
                                  ? GestureDetector(
                                      onTap: () async {
                                        await cubit.loadServicesPunchers(
                                            id: widget.categories.id,
                                            fetchAll: true);
                                        cubit.changeScreenIndex(
                                            1, cubit.servicePunchers);
                                      },
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/pin.svg'),
                                          Text(
                                            t.map,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Palette.blackColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        cubit.changeScreenIndex(
                                            0, cubit.servicePunchers);
                                      },
                                      child: SvgPicture.asset(
                                          'assets/icons/stores.svg')),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: Directionality.of(context) ==
                                          TextDirection.rtl
                                      ? MediaQuery.of(context).size.width * 0.1
                                      : 0.0,
                                  right: Directionality.of(context) ==
                                          TextDirection.ltr
                                      ? MediaQuery.of(context).size.width * 0.1
                                      : 0.0,
                                ),
                                child: Text(
                                  // cubit.screenIndex == 0
                                  t.services_provider,
                                  // : t.near_stores,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Palette.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => context.pop(),
                                child: const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 17,
                                  color: Palette.blackColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
