import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/notifications/cubit/notifications_cubit.dart';
import 'package:future_hub/common/notifications/cubit/notifications_state.dart';
import 'package:future_hub/common/notifications/widgets/notification_item.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.notifications,
          style: const TextStyle(fontSize: 22, color: Palette.blackColor),
        ),
        context: context,
      ),
      body: BlocBuilder<NotificationsCubit, NotificationsState>(
        builder: (context, state) {
          if (state is NotificationsLoaded) {
            if (state.notifications.isNotEmpty) {
              return ListView.builder(
                itemCount: state.notifications.length,
                itemBuilder: (context, index) {
                  return NotificationItem(
                    notification: state.notifications[index],
                  );
                },
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SvgPicture.asset(
                  'assets/images/notifaction.svg',
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    t.the_place_here_is_empty,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    t.you_can_find_your_notifications_here,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Palette.textGreyColor,
                    ),
                  ),
                )
              ],
            );
          }

          // TODO: Add shimmer
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: CircularProgressIndicator.adaptive()),
            ],
          );
        },
      ),
    );
  }
}
