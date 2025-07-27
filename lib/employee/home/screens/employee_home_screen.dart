import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/utils/pusher_config.dart';
import 'package:future_hub/common/shared/widgets/drawer_screen.dart';
import 'package:future_hub/common/shared/widgets/new_driver_app_bar.dart';
import 'package:future_hub/employee/components/bottom_nav_bar.dart';
import 'package:future_hub/employee/components/carousel_slider.dart';
import 'package:future_hub/employee/components/fuel_silder.dart';
import 'package:future_hub/employee/components/services_list.dart';
import 'package:future_hub/l10n/app_localizations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

class EmployeeHomeScreen extends StatefulWidget {
  final void Function() onTapBalance;

  const EmployeeHomeScreen({
    super.key,
    required this.onTapBalance,
  });

  @override
  State<EmployeeHomeScreen> createState() => _EmployeeHomeScreenState();
}

class _EmployeeHomeScreenState extends State<EmployeeHomeScreen> {
  bool isDrawerOpen = false;
  bool showHint = false;
  bool showFirstImage = true;
  Timer? _imageTimer;
  bool _locationEnabled = false;
  late AuthSignedIn authState; // Declare here
  late User user; // Declare here
  final ScrollController _scrollController = ScrollController();
  showHintFunc() async {
    if (await CacheManager.getData('home-hint') == null) {
      setState(() {
        showHint = true;
      });
    } else {
      setState(() {
        showHint = false;
      });
    }
  }

  Future<void> onRefresh() async {
    await context.read<AuthCubit>().init();
  }

  final pusherConfig = PusherConfig();
  @override
  void initState() {
    _checkLocationService();
    authState = context.read<AuthCubit>().state as AuthSignedIn;
    user = authState.user;
    log("============================================== pusher event came ======================================================");
    log("Initializing Pusher for user ${user.id}");
    // MediaQuery.of(context).size.height * 0.6;
    super.initState();
    pusherConfig.initPusher((event) {
      if (event.eventName == "user-selected") {
        log("send data of update location ");
      }
    }, channelName: 'tracking.${user.id}', userId: user.id, context: context);
    _startImageTimer();
    // Timer.periodic(const Duration(seconds: 3), (timer) {
    //   setState(() {
    //     showFirstImage = !showFirstImage; // Toggle between the two images
    //   });
    // });
  }

  Future<void> _checkLocationService() async {
    final enabled = await MapServices.ensureLocationEnabled();

    if (!enabled && mounted) {
      // Show alert dialog to guide user
      _showLocationAlert();
    } else {
      setState(() => _locationEnabled = true);
    }
  }

  void _showLocationAlert() {
    final t = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.locationRequired),
        content: Text(t.pleaseEnableLocationServicesForThisApp),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(t.cancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              await Geolocator.openLocationSettings(); // Open device settings
              _checkLocationService(); // Re-check after returning
            },
            child: Text(t.enable),
          ),
        ],
      ),
    );
  }

  void _startImageTimer() {
    _imageTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (mounted) {
        // Check if widget is still mounted
        setState(() {
          showFirstImage = !showFirstImage;
        });
      } else {
        timer.cancel(); // Cancel timer if widget is disposed
      }
    });
  }

  @override
  void dispose() {
    _imageTimer?.cancel();
    _imageTimer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool arabic = Directionality.of(context) == TextDirection.rtl;

    final paddingTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: [
          const DrawerScreen(
            employee: true,
          ),
          AnimatedContainer(
            height: MediaQuery.of(context).size.height,
            transform: Matrix4.translationValues(
                isDrawerOpen
                    ? arabic
                        ? -MediaQuery.of(context).size.width * 0.28
                        : MediaQuery.of(context).size.width * 0.37
                    : 0.0,
                isDrawerOpen
                    ? arabic
                        ? 90
                        : 130
                    : 0.0,
                0)
              ..scale(isDrawerOpen ? 0.78 : 1.00)
              ..rotateZ(isDrawerOpen
                  ? arabic
                      ? 0.1
                      : -0.1
                  : 0),
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: isDrawerOpen
                  ? BorderRadius.circular(40)
                  : BorderRadius.circular(0),
            ),
          ),
          AnimatedContainer(
            height: MediaQuery.of(context).size.height,
            transform: Matrix4.translationValues(
                isDrawerOpen
                    ? arabic
                        ? -MediaQuery.of(context).size.width * 0.42
                        : MediaQuery.of(context).size.width * 0.45
                    : 0.0,
                isDrawerOpen
                    ? arabic
                        ? 55
                        : 90
                    : 0.0,
                0)
              ..scale(isDrawerOpen ? 0.85 : 1.00)
              ..rotateZ(isDrawerOpen
                  ? arabic
                      ? 0.1
                      : -0.1
                  : 0),
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: isDrawerOpen
                  ? BorderRadius.circular(40)
                  : BorderRadius.circular(0),
            ),
          ),
          AnimatedContainer(
            height: MediaQuery.of(context).size.height,
            transform: Matrix4.translationValues(
                isDrawerOpen
                    ? arabic
                        ? -MediaQuery.of(context).size.width * 0.55
                        : MediaQuery.of(context).size.width * 0.55
                    : 0.0,
                isDrawerOpen
                    ? arabic
                        ? 30
                        : 60
                    : 0.0,
                0)
              ..scale(isDrawerOpen ? 0.90 : 1.00)
              ..rotateZ(isDrawerOpen
                  ? arabic
                      ? 0.1
                      : -0.1
                  : 0),
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: isDrawerOpen
                  ? BorderRadius.circular(40)
                  : BorderRadius.circular(0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: paddingTop),
              child: RefreshIndicator(
                onRefresh: onRefresh,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      BlocBuilder<AuthCubit, AuthState>(
                          builder: (context, state) {
                        final user = (state as AuthSignedIn);
                        return CustomAppBar(
                          fuelBalance: user.user.balanceFuel ?? "",
                          servicesBalance: user.user.balanceService ?? "",
                          backgroundImagePath: 'assets/images/backgraound.png',
                          userName: user.user.name ?? "",
                          userBalance: user.user.balance ?? "",
                          userImageUrl: user.user.image ?? "",
                          onUserImagePressed: () {
                            setState(() {
                              isDrawerOpen = !isDrawerOpen;
                            });
                          },
                          isDrawerOpen: isDrawerOpen,
                        );
                      }),
                      // EmployeeHomeCarousel(isDrawerOpen: isDrawerOpen),
                      const ServicesListWidget(), // Add this line
                      const SizedBox(height: 16),
                      GestureDetector(
                          onTap: () {
                            context.push('/employee/new-order');
                          },
                          child: const FuelContainer()),
                      const SizedBox(height: 16),
                      EmployeeHomeCarousel(isDrawerOpen: isDrawerOpen),
                      const SizedBox(height: 20),
                      // Transform.translate(
                      //     offset: Offset(
                      //         0, -MediaQuery.of(context).size.height * 0.02),
                      //     child: const EmployeeHomeWalletCard()),
                      // // const BestCarOilCard(),
                      //  EmployeeHomeOfferCarousel(isDrawerOpen: isDrawerOpen),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.1,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(
                      //     left: 24.0,
                      //     right: 24.0,
                      //     bottom: 18.0,
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.stretch,
                      //     children: [
                      //       ChevronButton(
                      //         child: Text(t.new_order),
                      //         onPressed: () =>
                      //             context.push('/employee/new-order'),
                      //       ),
                      //       const SizedBox(height: 20.0),
                      //       ChevronDashedBorder(
                      //         child: SizedBox(
                      //           width: MediaQuery.sizeOf(context).width,
                      //           child: ChevronButton(
                      //             onPressed: () =>
                      //                 context.push('/employee/oil/search'),
                      //             style: ChevronButtonStyle.dashed(),
                      //             child: Text(t.best_oil_for_your_car),
                      //           ),
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.only(
                      //           top: 18.0,
                      //         ),
                      //         child: Text(
                      //           t.previous_orders,
                      //           style: theme.textTheme.titleLarge,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              child: buildBottomNavBar(context, arabic),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              child: buildCenterLogo(context, arabic),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomNavBar(BuildContext context, bool arabic) {
    final size = MediaQuery.of(context).size;
    return AnimatedContainer(
      height: MediaQuery.of(context).size.height,
      transform: Matrix4.translationValues(
          isDrawerOpen
              ? size.width > 420
                  ? arabic
                      ? -size.width * 0.73
                      : size.width * 0.74
                  : arabic
                      ? -size.width * 0.71
                      : size.width * 0.71
              : 0.0,
          isDrawerOpen
              ? arabic
                  ? -size.height * 0.04
                  : size.height * 0.01
              : 0.0,
          0)
        ..scale(isDrawerOpen ? 0.90 : 1.00)
        ..rotateZ(isDrawerOpen
            ? arabic
                ? 0.1
                : -0.1
            : 0),
      duration: const Duration(milliseconds: 300),
      child: const EmployeeBottomNavBar(),
    );
  }

  Widget buildCenterLogo(BuildContext context, bool arabic) {
    logoPressed() {
      if (showHint) {
        CacheManager.saveData('home-hint', 'true');
        setState(() {
          showHint = false;
        });
        // EmployeePunchersCubit.get(context).loadPunchers().then((_) {
        //
        // });
        context.push('/employee/new-order');
        return;
      }
      context.push('/employee/new-order');
    }

    return AnimatedContainer(
      height: MediaQuery.of(context).size.height,
      transform: Matrix4.translationValues(
          isDrawerOpen
              ? arabic
                  ? -MediaQuery.of(context).size.width * 0.55
                  : MediaQuery.of(context).size.width * 0.80
              : 0.0,
          isDrawerOpen ? 0.0 : 0.0,
          0)
        ..scale(isDrawerOpen ? 0.90 : 1.00)
        ..rotateZ(isDrawerOpen
            ? arabic
                ? 0.1
                : -0.1
            : 0),
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () => logoPressed(),
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // First Image
                AnimatedOpacity(
                  opacity:
                      showFirstImage ? 1.0 : 0.0, // Show/hide based on state
                  duration: const Duration(milliseconds: 500), // Fade duration
                  child: Image.asset(
                    'assets/images/home-logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                // Second Image
                AnimatedOpacity(
                  opacity:
                      showFirstImage ? 0.0 : 1.0, // Show/hide based on state
                  duration: const Duration(milliseconds: 500), // Fade duration
                  child: Image.asset(
                    'assets/images/Company employee.png', // Your second image
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
