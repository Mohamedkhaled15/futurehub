import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/cubits/drawer_cubit/cubit.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:go_router/go_router.dart';

import '../../profile/widgets/sign_out_bottom_sheet.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({this.employee = false, super.key});
  final bool employee;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    void signOut(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (context) => const SignOutBottomSheet(),
      );
    }

    return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      state as AuthSignedIn;
      debugPrint(state.user.image.toString());

      return Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: Palette.primaryColor,
          ),
          Container(
            width: width,
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.1,
                horizontal: width * 0.05,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => context.push('/profile'),
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            state.user.image!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Image.asset(
                                'assets/images/people.png', // Replace with your local fallback image path
                                fit: BoxFit.cover,filterQuality: FilterQuality.none,  // Disable mipmapping
                  isAntiAlias: false, 
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    InkWell(
                      onTap: () => context.push('/profile'),
                      child: Row(
                        children: [
                          Text(
                            t.hi,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Palette.whiteColor,
                            ),
                          ),
                          Text(
                            " ${state.user.name}",
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: Palette.whiteColor,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => context.push('/profile'),
                      child: Text(
                        t.greet_user,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Palette.whiteColor,
                          fontSize: 20,
                          height: height * 0.0015,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    InkWell(
                      onTap: () => context
                          .read<DrawerCubit>()
                          .changeDrawerState(), // Adjust destination as needed
                      child: Text(
                        t.home,
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: Palette.whiteColor,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    InkWell(
                      onTap: () => context.push('/profile'),
                      child: Text(
                        t.my_profile,
                        style: theme.textTheme.displaySmall!.copyWith(
                          color: Palette.whiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    InkWell(
                      onTap: employee
                          ? () => context.push('/employee-orders-screen')
                          : () => context.push('/puncher-orders-screen'),
                      child: Text(
                        t.orders,
                        style: theme.textTheme.displaySmall!.copyWith(
                          color: Palette.whiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    if (!employee) SizedBox(height: height * 0.03),
                    if (!employee)
                      InkWell(
                        onTap: () => context.push('/puncher-report-screen'),
                        child: Text(
                          t.reports,
                          style: theme.textTheme.displaySmall!.copyWith(
                            color: Palette.whiteColor,
                            fontSize: 28,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    SizedBox(height: height * 0.03),
                    // InkWell(
                    //   onTap: () => context.push('/points'),
                    //   child: Text(
                    //     t.points,
                    //     style: const TextStyle(
                    //       color: Palette.whiteColor,
                    //       fontSize: 28,
                    //       fontWeight: FontWeight.w100,
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(height: height * 0.03),
                    // InkWell(
                    //   onTap: () => context.push('/points/points_partners'),
                    //   child: Text(
                    //     t.points_partners,
                    //     style: const TextStyle(
                    //       color: Palette.whiteColor,
                    //       fontSize: 28,
                    //       fontWeight: FontWeight.w100,
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(height: height * 0.03),
                    InkWell(
                      onTap: () => context.push('/settings_screen'),
                      child: Text(
                        t.settings,
                        style: const TextStyle(
                          color: Palette.whiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    InkWell(
                      onTap: () => context.push('/language_screen'),
                      child: Text(
                        t.language,
                        style: const TextStyle(
                          color: Palette.whiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.15),
                    InkWell(
                      onTap: () => signOut(context),
                      child: Text(
                        t.sign_out,
                        style: const TextStyle(
                          color: Palette.whiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.03,
            left: 0,
            right: 0,
            child: const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'v1.0',
                    style: TextStyle(
                      fontSize: 22,
                      color: Palette.whiteColor,
                    ),
                  ),
                  Text(
                    'Futurehub',
                    style: TextStyle(
                      fontSize: 20,
                      color: Palette.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
