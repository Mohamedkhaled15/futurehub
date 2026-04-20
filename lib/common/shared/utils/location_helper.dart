import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:future_hub/l10n/app_localizations.dart';

mixin LocationHelper<T extends StatefulWidget> on State<T>, WidgetsBindingObserver {
  bool _isCheckingLocation = false;
  VoidCallback? _onGrantedCallback;
  VoidCallback? _onCancelCallback;
  bool _isDialogShowing = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _isCheckingLocation) {
      _checkLocationStatus();
    }
  }

  Future<void> ensureLocationWithDialog({
    required VoidCallback onGranted,
    VoidCallback? onCancel,
  }) async {
    _onGrantedCallback = onGranted;
    _onCancelCallback = onCancel;
    
    final isEnabled = await MapServices.ensureLocationEnabled();

    if (isEnabled) {
      _onGrantedCallback?.call();
    } else {
      if (!mounted) return;
      _showLocationAlert();
    }
  }

  void _showLocationAlert() {
    if (_isDialogShowing) return;
    _isDialogShowing = true;
    
    final t = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text(t.locationRequired),
        content: Text(t.pleaseEnableLocationServicesForThisApp),
        actions: [
          TextButton(
            onPressed: () {
              _isDialogShowing = false;
              _isCheckingLocation = false;
              Navigator.pop(context);
              _onCancelCallback?.call();
            },
            child: Text(t.cancel),
          ),
          TextButton(
            onPressed: () async {
              _isCheckingLocation = true;
              await MapServices.openLocationSettings();
            },
            child: Text(t.enable),
          ),
        ],
      ),
    );
  }

  Future<void> _checkLocationStatus() async {
    final isEnabled = await MapServices.ensureLocationEnabled();
    if (isEnabled) {
      _isCheckingLocation = false;
      if (_isDialogShowing) {
        _isDialogShowing = false;
        if (mounted) Navigator.pop(context);
      }
      _onGrantedCallback?.call();
    } else {
      if (!_isDialogShowing && mounted) {
        _showLocationAlert();
      }
    }
  }
}
