import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/qr_code_scan_camera.dart';
import 'package:future_hub/puncher/components/enter_user_code_view.dart';
import 'package:future_hub/puncher/components/scanning_image_animation.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model_confirm_canel.dart';
import 'package:future_hub/puncher/orders/model/vehicle_qr.dart';
import 'package:future_hub/puncher/orders/services/puncher_order_services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RecieveOrderScreen extends StatefulWidget {
  const RecieveOrderScreen({super.key});

  @override
  State<RecieveOrderScreen> createState() => _RecieveOrderScreenState();
}

class _RecieveOrderScreenState extends State<RecieveOrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _ordersService = PuncherOrderServices();

  bool showEnterCode = false;

  Future<void> _openOrder(String referenceNumber) async {
    await runFetch(
      context: context,
      fetch: () async {
        final order = await _ordersService.orderById(referenceNumber);
        if (!mounted) return;
        if (order is VehicleQr) {
          // Navigate to the vehicle details screen
          context.pushReplacement('/puncher/vehicle-details', extra: order);
        } else if (order is ServiceProviderOrderConfirmCancelModel) {
          // Navigate to the order details screen
          context.pushReplacement('/puncher/order-details', extra: order);
        } else {
          // Handle unexpected type
          throw Exception("Unexpected order type: ${order.runtimeType}");
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(
      () {
        if (_tabController.index == 0) {
          setState(() {
            showEnterCode = false;
          });
        } else {
          setState(() {
            showEnterCode = true;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: FutureHubAppBar(
          title: Text(
            showEnterCode ? t.user_code : t.scan_the_order_code,
            style: const TextStyle(
                color: Palette.blackColor,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          context: context,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.7,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      const Center(
                        child: ScanningLine(
                          imageUrl: 'assets/images/qr_code.png',
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        t.scan_qr_announcement,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Palette.dangerColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QrCodeScanner(
                              onScan: _openOrder,
                              title: t.scan_the_order_code,
                              description: t
                                  .direct_the_camera_to_the_clients_phone_to_read_the_order_code,
                            ),
                          ),
                        ),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 32),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/qr-icon.svg',
                                height: 28,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                t.start_scanning,
                                style: const TextStyle(
                                  fontSize: 22,
                                  color: Palette.primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const EnterUserCodeView(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: PreferredSize(
                preferredSize: const Size(200, 200),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Theme(
                    data: ThemeData(
                      textTheme: GoogleFonts.almaraiTextTheme(),
                      dividerColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: Material(
                      color: Palette.tabBarColor,
                      child: TabBar(
                        controller: _tabController,
                        indicatorPadding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 3),
                        overlayColor: WidgetStateProperty.all<Color>(
                          Colors.transparent,
                        ),
                        unselectedLabelStyle:
                            theme.textTheme.displaySmall!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                        dividerColor: Colors.transparent,
                        unselectedLabelColor:
                            Palette.textGreyColor.withOpacity(0.5),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.white,
                        indicatorColor: Colors.black,
                        labelPadding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.007),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Palette.primaryColor,
                        ),
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    t.barcode,
                                    style: const TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                          ),
                          Tab(
                            child: Align(
                              child: Text(
                                t.user_code,
                                style: const TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // @override
    // Widget build(BuildContext context) {

    //     body: Column(
    //       children: [
    //         SizedBox(
    //           height: size.height * 0.08,
    //         ),

    //       ],
    //     ),

    //   );
    // }
  }
}
