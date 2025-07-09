import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/profile/widgets/delete_out_bottom_sheet.dart';
import 'package:future_hub/common/profile/widgets/profile_list_tile.dart';
import 'package:future_hub/common/shared/router.dart';
import 'package:go_router/go_router.dart';

import '../../shared/palette.dart';

class ProfileListView extends StatelessWidget {
  final bool showPoints;

  const ProfileListView({
    super.key,
    required this.showPoints,
  });

  // void _switchLanguage(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) => const SwitchLanguageBottomSheet(),
  //   );
  // }

  void _deleteAccount(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const DeleteAccountBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final height = MediaQuery.of(context).size.height;
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is! AuthSignedIn) return Container();

        return ListView(
          padding: const EdgeInsets.only(
            right: 24.0,
            bottom: 24.0,
            left: 24.0,
          ),
          children: [
            ProfileListTile(
              title: t.basic_information,
              icon: Image.asset(
                'assets/images/basic-information.png',
                height: 100,
                // colorFilter: const ColorFilter.mode(
                //   Palette.blackColor,
                //   BlendMode.srcATop,
                // ),
              ),
              onPressed: () => context.push('/account-data'),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.25),
              thickness: 1,
              endIndent: 10,
              indent: 10,
            ),
            // if (showPoints) ...[
            //   ProfileListTile(
            //     title: t.my_points,
            //     icon: Image.asset(
            //       'assets/images/points-p.png',
            //       // colorFilter: const ColorFilter.mode(
            //       //   Palette.blackColor,
            //       //   BlendMode.srcATop,
            //       // ),
            //       height: height * 0.05,
            //     ),
            //     onPressed: () => context.push('/points'),
            //   ),
            //   Divider(
            //     color: Colors.grey.withOpacity(0.25),
            //     thickness: 1,
            //     endIndent: 10,
            //     indent: 10,
            //   ),
            // ],
            ProfileListTile(
              title: t.my_orders,
              icon: Image.asset(
                'assets/images/orders-p.png',
              ),
              onPressed: () {
                switch (state.user.type) {
                  case 'company':
                    return router.go('/company/orders');
                  case 'customer':
                    return router.go('/employee-orders-screen');
                  default:
                    return router.go('/puncher-orders-screen');
                }
                context.push('/puncher-orders-screen');
              },
            ),
            Divider(
              color: Colors.grey.withOpacity(0.25),
              thickness: 1,
              endIndent: 10,
              indent: 10,
            ),
            ProfileListTile(
              title: t.frequently_asked_questions,
              icon: SvgPicture.asset('assets/icons/faq.svg'),
              onPressed: () => context.push('/faq'),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.25),
              thickness: 1,
              endIndent: 10,
              indent: 10,
            ),
            // ProfileListTile(
            //   title: t.change_password,
            //   icon: SvgPicture.asset('assets/icons/lock.svg'),
            //   onPressed: () => context.push('/change-password'),
            // ),
            // Divider(
            //   color: Colors.grey.withOpacity(0.25),
            //   thickness: 1,
            //   endIndent: 10,
            //   indent: 10,
            // ),
            // if (state.user.type == 'company') ...[
            //   ProfileListTile(
            //     title: t.coupons,
            //     icon: SvgPicture.asset('assets/icons/coupon.svg'),
            //     onPressed: () => context.push('/coupons'),
            //   ),
            //   Divider(
            //     color: Colors.grey.withOpacity(0.25),
            //     thickness: 1,
            //     endIndent: 10,
            //     indent: 10,
            //   ),
            // ],

            ProfileListTile(
              title: t.delete_the_account,
              icon: SvgPicture.asset('assets/icons/delete-accounts.svg',
                  colorFilter: const ColorFilter.mode(
                      Palette.primaryColor, BlendMode.srcIn)),
              onPressed: () => _deleteAccount(context),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.25),
              thickness: 1,
              endIndent: 10,
              indent: 10,
            ),
            ProfileListTile(
              title: t.about_the_app,
              icon: SizedBox(
                height: 200,
                child: SvgPicture.asset(
                  'assets/icons/app-bar-logo.svg',
                  fit: BoxFit.contain,
                ),
              ),
              onPressed: () => context.push('/about'),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.25),
              thickness: 1,
              endIndent: 10,
              indent: 10,
            ),
            // ProfileListTile(
            //   title: t.privacy_policy,
            //   icon: SvgPicture.asset('assets/icons/privacy-policy.svg'),
            //   onPressed: () => context.push('/privacy'),
            // ),
            // Divider(
            //   color: Colors.grey.withOpacity(0.25),
            //   thickness: 1,
            //   endIndent: 10,
            //   indent: 10,
            // ),
            // ProfileListTile(
            //   title: t.terms_and_conditions,
            //   icon: SvgPicture.asset('assets/icons/terms-conditions.svg'),
            //   onPressed: () => context.push('/terms'),
            // ),
            // Divider(
            //   color: Colors.grey.withOpacity(0.25),
            //   thickness: 1,
            //   endIndent: 10,
            //   indent: 10,
            // ),
            // ProfileListTile(
            //   title: t.switch_the_language,
            //   icon: SvgPicture.asset('assets/icons/switch-language.svg'),
            //   onPressed: () => _switchLanguage(context),
            // ),

            // Divider(
            //   color: Colors.grey.withOpacity(0.25),
            //   thickness: 1,
            //   endIndent: 10,
            //   indent: 10,
            // ),
            // ProfileListTile(
            //   title: t.sign_out,
            //   icon: SvgPicture.asset('assets/icons/signout.svg'),
            //   onPressed: () => _signOut(context),
            // ),
          ],
        );
      },
    );
  }
}
