import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/utils/fetch_exception.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';

import '../../../l10n/app_localizations.dart';

typedef OnValidation = void Function(Map<String, String> validation);

Future<T?> runFetch<T>({
  required BuildContext context,
  required Future<T> Function() fetch,
  OnValidation? onValidation,
  void Function()? after,
}) async {
  final t = AppLocalizations.of(context)!;

  try {
    return await fetch();
  } catch (exception) {
    if (exception is FetchException) {
      // Handle FetchException
      if (exception.isValidation && onValidation != null) {
        onValidation(exception.validation);
      } else {
        showToast(text: exception.message, state: ToastStates.error);
        return Future.error(exception.message); // Propagate error
      }
    } else if (exception is Exception) {
      // Handle general exceptions (e.g., from the API or network)
      String message = exception.toString(); // Convert exception to string
      message =
          message.replaceAll('Exception:', '').replaceAll('Error:', '').trim();
      showToast(text: message, state: ToastStates.error);
      return Future.error(message); // Propagate error
    } else {
      // Fallback for unknown exceptions
      final message = t.something_went_wrong;
      showToast(text: message, state: ToastStates.error);
      return Future.error(message); // Propagate fallback error
    }
  } finally {
    after?.call();
  }
  return null;
}
