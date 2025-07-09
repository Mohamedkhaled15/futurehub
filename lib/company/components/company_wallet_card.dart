import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/palette.dart';

class CompanyHomeWalletCard extends StatefulWidget {
  final void Function()? onDeposit;
  const CompanyHomeWalletCard({super.key, this.onDeposit});

  @override
  State<CompanyHomeWalletCard> createState() => _CompanyHomeWalletCardState();
}

class _CompanyHomeWalletCardState extends State<CompanyHomeWalletCard> {
  bool showBalance = false;

  @override
  Widget build(BuildContext context) {
    final direction = Directionality.of(context);
    final t = AppLocalizations.of(context)!;

    return Center(
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.purple, // Set your background color here
          image: const DecorationImage(
            image: AssetImage('assets/images/backgraound.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              right: 20,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      showBalance = !showBalance;
                    }),
                    child: SvgPicture.asset(
                      showBalance
                          ? 'assets/icons/eye.svg'
                          : 'assets/icons/employee-eye-view.svg',
                      height: 18,
                      colorFilter: const ColorFilter.mode(
                          Palette.whiteColor, BlendMode.srcATop),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    showBalance ? t.hide : t.show,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Palette.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
              final balance =
                  (state is AuthSignedIn) ? state.user.balance : t.your_balance;

              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/employee-avatar.png',
                      height: 50,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      showBalance ? '$balance ${t.sar}' : t.your_balance,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Palette.whiteColor,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: widget.onDeposit,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 10,
                        ),
                      ),
                      child: Text(
                        t.deposit,
                        style: const TextStyle(
                          color: Colors
                              .purple, // Set text color to match the theme
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
