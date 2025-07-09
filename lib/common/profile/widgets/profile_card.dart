import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:go_router/go_router.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({required this.user, super.key});

  final User user;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return ChevronCard(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Palette.primaryColor,
                ),
                borderRadius: BorderRadius.circular(49),
              ),
              child: CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(user.image!),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                user.name!,
                style: theme.textTheme.titleLarge,
              ),
              TextButton.icon(
                onPressed: () => context.push('/account-data'),
                icon: SvgPicture.asset('assets/icons/profile.svg'),
                label: Text(t.account_data),
              ),
            ],
          )
        ],
      ),
    );
  }
}
