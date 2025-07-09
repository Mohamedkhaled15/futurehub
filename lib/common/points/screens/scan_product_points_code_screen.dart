import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/qr_code_scan_camera.dart';
import 'package:go_router/go_router.dart';

class ScanProductPointsCodeScreen extends StatefulWidget {
  const ScanProductPointsCodeScreen({super.key});

  @override
  State<ScanProductPointsCodeScreen> createState() =>
      _ScanProductPointsCodeScreenState();
}

class _ScanProductPointsCodeScreenState
    extends State<ScanProductPointsCodeScreen> {
  @override
  void initState() {
    super.initState();

    if (kDebugMode) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        context.pushReplacement('/points/added?points=100');
      });
    }
  }

  Future<void> _gainPoints(String code) async {
    // final points = await context.read<AuthCubit>().gainPoints(
    //       context,
    //       code: code,
    //     );

    if (!mounted) return;

    // if (points != null) {
    //   context.pushReplacement('/points/added?points=$points');
    // }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.scan_the_point_code,
          style: const TextStyle(
            fontSize: 22,
            color: Palette.blackColor,
          ),
        ),
        context: context,
      ),
      body: QrCodeScanner(
        showAppBar: false,
        onScan: _gainPoints,
        title: t.scan_the_point_code,
        description: t.direct_the_camera_to_the_products_code_to_read_it,
      ),
    );
  }
}
