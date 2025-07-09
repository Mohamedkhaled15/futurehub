import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/points/services/points_service.dart';
import 'package:future_hub/common/points/widgets/my_points_card.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:go_router/go_router.dart';

class PointsWidget extends StatefulWidget {
  const PointsWidget({super.key});

  @override
  State<PointsWidget> createState() => _PointsWidgetState();
}

class _PointsWidgetState extends State<PointsWidget> {
  final _pointsController = TextEditingController();

  final pointsService = PointsService();
  bool loading = false;

  Future<void> _redeemPoints() async {
    runFetch(
      context: context,
      fetch: () async {
        setState(() {
          loading = true;
        });
        // final result = await pointsService.createUserCoupon(
        //     points: int.parse(_pointsController.text));

        if (mounted) {
          // UserGiftsCubit.get(context).update(context);
          context.pop();
          // context.push('/points/redeemed', extra: result);
        }
      },
      after: () {
        setState(() {
          loading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // final direction = Directionality.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            // top: paddingTop,
            // right: 24.0,
            // left: 24.0,
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                (state as AuthSignedIn).user.points;
                return MyPointsCard(
                  user: (state).user,
                );
              },
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Center(
              child: Text(
                t.number_of_points_to_rerdeem,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Palette.tabBarColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Localizations.override(
                    context: context,
                    locale: const Locale('en'),
                    child: TextFormField(
                      onChanged: (String? s) {
                        debugPrint("textfield input is $s");
                      },
                      controller: _pointsController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      // On
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '00',
                        hintStyle: TextStyle(
                          fontSize: 50,
                          color: Palette.pointsHintColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Note text
            Center(
              child: Text(
                t.redeem_points_hint,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.05, horizontal: width * 0.2),
              child: ChevronButton(
                onPressed: _redeemPoints,
                loading: loading,
                child: Text(t.redeem_points),
              ),
            )
          ],
        ),
      ),
    );
  }
}
