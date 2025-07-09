import 'package:flutter/material.dart' hide Notification;
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/notifications/models/notification_model.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItem extends StatelessWidget {
  final NotifactionData notification;

  const NotificationItem({
    super.key,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final time = notification.createdAt != null
        ? timeago.format(
            DateTime.parse(notification.createdAt),
            locale: t.localeName,
          )
        : null;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 16.0,
      ),
      decoration: BoxDecoration(
        color: notification.seen == 1
            ? Palette.whiteColor
            : Palette.primaryColor.withOpacity(0.1),
        border: notification.seen == 0
            ? null
            : Border(
                bottom: BorderSide(
                  color: Palette.primaryColor.withOpacity(0.5),
                ),
              ),
      ),
      child: Stack(
        children: [
          if (notification.seen == 0)
            Positioned.directional(
              textDirection: Directionality.of(context),
              top: 0,
              end: 0,
              child: const Icon(
                Icons.circle,
                color: Palette.primaryColor,
                size: 11.0,
              ),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 15.0),
                child: Text(
                  CacheManager.locale! == const Locale("en")
                      ? notification.message.en
                      : notification.message.ar,
                  style: theme.textTheme.bodyMedium!.copyWith(height: 1.5),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  const Icon(
                    Icons.access_time,
                    color: Palette.primaryColor,
                    size: 24.0,
                  ),
                  const SizedBox(width: 10.0),
                  if (time != null)
                    Text(
                      time,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: Palette.blackColor),
                    )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
