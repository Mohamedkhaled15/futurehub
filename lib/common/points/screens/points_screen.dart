import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/points/cubit/prevoius_orders_cubit/cubit.dart';
import 'package:future_hub/common/points/cubit/prevoius_orders_cubit/states.dart';
import 'package:future_hub/common/points/models/user_gift.dart';
import 'package:future_hub/common/points/widgets/redeem_list_tile.dart';
import 'package:future_hub/common/points/widgets/redeem_points_screen.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/labeled_icon_placeholder.dart';
import 'package:go_router/go_router.dart';

import '../../../l10n/app_localizations.dart';
import '../../shared/palette.dart';
import '../../shared/widgets/loading_indicator.dart';
import '../widgets/my_points_card.dart';

class PointsScreen extends StatefulWidget {
  const PointsScreen({super.key});

  @override
  State<PointsScreen> createState() => _PointsScreenState();
}

class _PointsScreenState extends State<PointsScreen> {
  Future<void> _onLoadMore() async {
    // return BlocProvider.of<UserGiftsCubit>(context).loadPreviousGifts(context);
  }

  // void _redeemPoints(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     builder: (context) => const RedeemPointsBottomSheet(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final direction = Directionality.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            // top: paddingTop,
            // right: 24.0,
            // left: 24.0,
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                (state as AuthSignedIn).user.points;
                return MyPointsCard(
                  user: (state).user,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.push('/points/points_partners');
                      },
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/point_partners.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            right: width * 0.04,
                            child: Center(
                              child: Text(
                                t.points_partners,
                                style: TextStyle(
                                  fontSize:
                                      direction == TextDirection.rtl ? 25 : 22,
                                  // fontWeight: FontWeight.bold,
                                  color: Palette.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PointsWidget(),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/about_points.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            right: width * 0.04,
                            child: Center(
                              child: Text(
                                t.about_your_points,
                                style: TextStyle(
                                  fontSize:
                                      direction == TextDirection.rtl ? 25 : 22,
                                  // fontWeight: FontWeight.bold,
                                  color: Palette.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                final user = (state as AuthSignedIn).user;
                final isPuncher = ['puncher', 'employee'].contains(user.type);
                if (isPuncher) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/scan-points-code.png',
                          height: height * 0.1,
                          width: width,
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          bottom: 0,
                          left: 0,
                          child: GestureDetector(
                            onTap: () => context.push('/points/scan-product'),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/points-scan-qr.svg'),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    t.copy_qr_code,
                                    style: TextStyle(
                                      fontSize: direction == TextDirection.rtl
                                          ? 25
                                          : 22,
                                      // fontWeight: FontWeight.bold,
                                      color: Palette.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    t.record_of_substitutions,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      color: Palette.blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            BlocBuilder<UserGiftsCubit, UserGiftsStates>(
                builder: (context, state) {
              if (state is UserGiftsLoadingState && state.isFirstFetch) {
                return const PaginatorLoadingIndicator();
              }
              List<UserGift> gifts = [];
              bool canLoadMore = true;

              if (state is UserGiftsLoadingState) {
                gifts = state.oldGifts;
              } else if (state is UserGiftsLoaded) {
                gifts = state.gifts;
                canLoadMore = state.canLoadMore;
              }
              return Expanded(
                child: InfiniteListView(
                  canLoadMore: canLoadMore,
                  empty: LabeledIconPlaceholder(
                    icon: SvgPicture.asset('assets/images/orders.svg'),
                    label: t.there_are_no_substitutions,
                  ),
                  itemBuilder: (context, index) {
                    return RedeemListTile(
                      onPressed: () {
                        context.push(
                          '/points/redeemed?old',
                          extra: gifts[index],
                        );
                      },
                      userGift: gifts[index],
                    );
                  },
                  itemCount: gifts.length,
                  onLoadMore: _onLoadMore,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
