import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/employee/orders/cubit/employee_punchers_cubit.dart';
import 'package:future_hub/employee/orders/cubit/employee_punchers_state.dart';
import 'package:future_hub/employee/orders/widgets/puncher_card.dart';
import 'package:go_router/go_router.dart';

import '../../../common/shared/widgets/loading_indicator.dart';
import '../../../common/shared/widgets/map_widget.dart';

class EmployeeNewOrderScreen extends StatefulWidget {
  const EmployeeNewOrderScreen({super.key});
  @override
  State<EmployeeNewOrderScreen> createState() => _EmployeeNewOrderScreenState();
}

class _EmployeeNewOrderScreenState extends State<EmployeeNewOrderScreen> {
  Future<void> _onLoadMore() async {
    return BlocProvider.of<EmployeePunchersCubit>(context).loadPunchers();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    return BlocConsumer<EmployeePunchersCubit, EmployeePunchersState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = EmployeePunchersCubit.get(context);
        if (state is PunchersLoadingState && state.isFirstFetch) {
          return const PaginatorLoadingIndicator();
        }
        bool canLoadMore = true;
        if (state is PunchersLoadingState) {
          // cubit.changeCubitPunchers(state.oldPunchers);
        } else if (state is PunchersLoadedState) {
          // cubit.changeCubitPunchers(state.punchers);
          // canLoadMore = state.canLoadMore;
        }
        return BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            final user = (state as AuthSignedIn).user;
            return Scaffold(
              body: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 10.0),
                      // const Column(
                      //   children: [
                      //     // SizedBox(
                      //     //   height: size.height * 0.11,
                      //     //   child: Row(
                      //     //     children: [
                      //     //       Expanded(
                      //     //         child: ChevronButton(
                      //     //           onPressed: () {
                      //     //             cubit.changeScreenIndex(
                      //     //                 0, cubit.cubitPunchers);
                      //     //           },
                      //     //           style: ChevronButtonStyle.dashed(
                      //     //             filled: cubit.screenIndex == 0,
                      //     //           ),
                      //     //           child: Column(
                      //     //             crossAxisAlignment:
                      //     //                 CrossAxisAlignment.stretch,
                      //     //             children: [
                      //     //               SvgPicture.asset(
                      //     //                 "assets/icons/menu.svg",
                      //     //                 colorFilter: ColorFilter.mode(
                      //     //                     cubit.screenIndex == 0
                      //     //                         ? Colors.white
                      //     //                         : Palette.primaryColor,
                      //     //                     BlendMode.srcATop),
                      //     //               ),
                      //     //               const SizedBox(height: 8.0),
                      //     //               Text(t.choose_by_name),
                      //     //             ],
                      //     //           ),
                      //     //         ),
                      //     //       ),
                      //     //       const SizedBox(width: 8.0),
                      //     //       Expanded(
                      //     //         child: ChevronButton(
                      //     //           onPressed: () {
                      //     //             cubit.changeScreenIndex(
                      //     //                 1, cubit.cubitPunchers);
                      //     //           },
                      //     //           style: ChevronButtonStyle.dashed(
                      //     //             filled: cubit.screenIndex == 1,
                      //     //           ),
                      //     //           child: Column(
                      //     //             crossAxisAlignment:
                      //     //                 CrossAxisAlignment.stretch,
                      //     //             children: [
                      //     //               SvgPicture.asset(
                      //     //                 "assets/icons/satellite.svg",
                      //     //                 colorFilter: ColorFilter.mode(
                      //     //                     cubit.screenIndex == 1
                      //     //                         ? Colors.white
                      //     //                         : Palette.primaryColor,
                      //     //                     BlendMode.srcATop),
                      //     //               ),
                      //     //               const SizedBox(height: 8.0),
                      //     //               Text(t.choose_from_map),
                      //     //             ],
                      //     //           ),
                      //     //         ),
                      //     //       ),
                      //     //     ],
                      //     //   ),
                      //     // ),
                      //   ],
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                      //   child: Text(
                      //     cubit.screenIndex == 0
                      //         ? t.choose_by_name
                      //         : t.choose_from_map,
                      //     style: theme.textTheme.titleLarge,
                      //   ),
                      // ),
                      if (cubit.screenIndex == 0) ...[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          child: Text(
                            t.nearbyStations,
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Palette.blackColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 190, // Keep the same height
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: min(5, cubit.cubitPunchers.length),
                            itemBuilder: (context, index) {
                              final station = cubit.cubitPunchers[index];
                              return GestureDetector(
                                onTap: () => context.push(
                                  '/employee/puncher-create-fuel-screen',
                                  extra: {
                                    'order': user, // Your User object
                                    'selectedPunchers': cubit.cubitPunchers[
                                        index], // Your Punchers object
                                  },
                                ),
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
                                              child: CachedNetworkImage(
                                                height: 100,
                                                fit: BoxFit.cover,
                                                imageUrl: station.image ?? "",
                                                placeholder: (context, url) =>
                                                    const Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        const Icon(
                                                  Icons.error,
                                                  size: 40,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            // Title and Distance in a row
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    CacheManager.locale! ==
                                                            const Locale("en")
                                                        ? station.title?.en ??
                                                            ''
                                                        : station.title?.ar ??
                                                            '',
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xff55217F)),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                const Spacer(),
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
                                            const Spacer(),
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
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            t.all_stores2,
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
                                    onTap: () => context.push(
                                      '/employee/puncher-create-fuel-screen',
                                      extra: {
                                        'order': user, // Your User object
                                        'selectedPunchers': cubit.cubitPunchers[
                                            index], // Your Punchers object
                                      },
                                    ),
                                    // context.push(
                                    // '/employee/puncher-screen/${cubit.cubitPunchers[index].id}',
                                    // extra: CacheManager.locale! ==
                                    //         const Locale("en")
                                    //     ? cubit.cubitPunchers[index].title
                                    //             ?.en ??
                                    //         ""
                                    //     : cubit.cubitPunchers[index].title
                                    //             ?.ar ??
                                    //         ""),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24),
                                      child: PuncherCard(
                                        lat:
                                            cubit.cubitPunchers[index].latitude,
                                        lng: cubit
                                            .cubitPunchers[index].longitude,
                                        address: CacheManager.locale! ==
                                                const Locale("en")
                                            ? cubit.cubitPunchers[index].address
                                                ?.en
                                            : cubit.cubitPunchers[index].address
                                                ?.ar,
                                        location:
                                            cubit.cubitPunchers[index].city!,
                                        distance:
                                            "${cubit.cubitPunchers[index].distanceInKm}" ??
                                                "",
                                        title: CacheManager.locale! ==
                                                const Locale("en")
                                            ? cubit.cubitPunchers[index].title
                                                    ?.en ??
                                                ""
                                            : cubit.cubitPunchers[index].title
                                                    ?.ar ??
                                                "",
                                        imageUrl:
                                            cubit.cubitPunchers[index].image,
                                      ),
                                    ),
                                  );
                                },
                                itemCount: cubit.cubitPunchers.length,
                                canLoadMore: canLoadMore,
                                onLoadMore: _onLoadMore,
                              )
                            : Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: MapWidget(
                                  cubit: cubit,
                                  user: user,
                                ),
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
                                        await cubit.loadPunchers(
                                            fetchAll: true);
                                        cubit.changeScreenIndex(
                                            1, cubit.cubitPunchers);
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
                                            0, cubit.cubitPunchers);
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
                                  cubit.screenIndex == 0
                                      ? t.all_stores
                                      : t.near_stores,
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
