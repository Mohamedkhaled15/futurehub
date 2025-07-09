import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  final String url;

  const WebViewScreen({Key? key, required this.url}) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize WebViewController
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            Uri uri = Uri.parse(url);
            if (uri.queryParameters.containsKey('payment_token')) {
              final t = AppLocalizations.of(context)!;
              final token = uri.queryParameters['payment_token'];
              if (token != null && token.isNotEmpty) {
                showToast(
                  text: t.amount_added_successfully,
                  state: ToastStates.success,
                );
                context.go('/company');
                // Navigator.pop(context, {'status': 'success', 'token': token});
              } else {
                showToast(
                  text: t.something_went_wrong,
                  state: ToastStates.error,
                );
                Navigator.pop(context, {'status': 'failure'});
              }
            } else if (url.contains("failure")) {
              Navigator.pop(context, {'status': 'failure'});
            }
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: FutureHubAppBar(
        onTap: () {
          _controller.reload();
        },
        context: context,
        title: Text(
          t.ePayment,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.refresh),
        //     onPressed: () {
        //       _controller.reload();
        //     },
        //   ),
        // ],
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
