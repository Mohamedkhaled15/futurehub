import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/profile/widgets/profile_image_widget.dart';
import 'package:future_hub/common/profile/widgets/profile_list_view.dart';
import 'package:future_hub/common/profile/widgets/sign_out_bottom_sheet.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void signOut(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (context) => const SignOutBottomSheet(),
      );
    }

    final t = AppLocalizations.of(context)!;
    final appBarHeight = AppBar().preferredSize.height;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSignedIn) {
          final user = state.user;
          final isPuncher = ['puncher', 'employee'].contains(user.type);
          final showEmployeePoints = user.type == 'customer' &&
              user.company?.customerPointsBenefit == 0;
          final showCompanyPoints =
              user.type == 'company' && user.company!.pointsBenefit == 0;
          final showPoints =
              isPuncher || showCompanyPoints || showEmployeePoints;
          return Scaffold(
            body: SizedBox(
              height: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    height: height,
                  ),
                  SizedBox(
                    height: height * 0.34,
                    width: width,
                    child: Image.asset(
                      'assets/images/profile-back-image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 1.75 * appBarHeight,
                    child: FutureHubAppBar(
                      color: Colors.transparent,
                      context: context,
                    ),
                  ),
                  Positioned.fill(
                    right: width * 0.06,
                    left: width * 0.06,
                    top: height * 0.23,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Palette.whiteColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: height * 0.1),
                          Center(
                            child: Text(
                              state.user.name ?? '',
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'ID',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Palette.blackColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ':',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Palette.blackColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  TextSpan(
                                    text: state.user.id.toString(),
                                    style: const TextStyle(
                                        fontSize: 17,
                                        color: Palette.textGreyColor,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Expanded(
                            child: ProfileListView(showPoints: showPoints),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: height * 0.04),
                            child: Center(
                              child: GestureDetector(
                                onTap: () => signOut(context),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/icons/logout.svg'),
                                    SizedBox(
                                      width: width * 0.04,
                                    ),
                                    Text(
                                      t.sign_out,
                                      style: const TextStyle(
                                        fontSize: 25,
                                        color: Palette.dangerColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.15,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: ProfileImageWidget(
                        user: state.user,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        // TODO: Add shimmer
        return Container();
      },
    );
  }
}
