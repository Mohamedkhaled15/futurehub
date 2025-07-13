import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:go_router/go_router.dart';

import '../../shared/palette.dart';

class MyPointsCard extends StatefulWidget {
  final User user;

  const MyPointsCard({
    super.key,
    required this.user,
  });

  @override
  State<MyPointsCard> createState() => _MyPointsCardState();
}

class _MyPointsCardState extends State<MyPointsCard> {
  bool showBalance = false;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        image: DecorationImage(
          image: AssetImage(
            "assets/images/points-card.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.32,
      // margin: EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.07,
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/home-logo.png',
                  height: height * 0.02,filterQuality: FilterQuality.none,  // Disable mipmapping
  isAntiAlias: false, 
                ),
                // Invisible widget to center the text properly
                const Spacer(), // This will push the text to the center
                Text(
                  t.my_points,
                  style: const TextStyle(
                    color: Palette.whiteColor,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(), // This will push the text to the center
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.white),
                  onPressed: () {
                    context.pop();
                  },
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: height * 0.035,
              child: Image.network(
                widget.user.image!,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),

            Text(
              "${t.hello}, ${widget.user.name}",
              style: const TextStyle(
                fontSize: 25,
                color: Palette.whiteColor,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        Text(
                          t.you_have,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Palette.whiteColor,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          widget.user.points == 0
                              ? widget.user.points!.toStringAsFixed(2)
                              : widget.user.points.toString(),
                          style: theme.textTheme.headlineSmall!.copyWith(
                            color: Palette.whiteColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          t.point,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Palette.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    if (!showBalance)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: SizedBox(
                            height: height * 0.03,
                            width: width * 0.4,
                          ),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => setState(() {
                          showBalance = !showBalance;
                        }),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: SvgPicture.asset(
                            showBalance
                                ? 'assets/icons/eye.svg'
                                : 'assets/icons/employee-eye-view.svg',
                            height:
                                showBalance ? height * 0.012 : height * 0.025,
                            colorFilter: const ColorFilter.mode(
                                Palette.whiteColor, BlendMode.srcATop),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => setState(() {
                          showBalance = !showBalance;
                        }),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: showBalance ? height * 0.008 : 0),
                          child: Text(
                            showBalance ? t.hide : t.show,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Palette.whiteColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            // Text(
            //   t.my_points_balance,
            //   style: theme.textTheme.headlineSmall!.copyWith(
            //     color: Palette.whiteColor,
            //     fontSize: 18,
            //     // fontWeight: FontWeight.bold,
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // Text(
            //   t.count_points(points),
            //   style: theme.textTheme.headlineSmall!.copyWith(
            //     color: Palette.whiteColor,
            //     fontSize: 30,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // const Spacer(),
            // InkWell(
            //   onTap: () {
            //     _redeemPoints(context);
            //   },
            //   child: Row(
            //     children: [
            //       Text(
            //         t.redeem_points,
            //         style: theme.textTheme.headlineSmall!.copyWith(
            //           color: Palette.whiteColor,
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       const SizedBox(
            //         width: 5,
            //       ),
            //       const Padding(
            //         padding: EdgeInsets.only(top: 4),
            //         child: Icon(
            //           Icons.arrow_forward_rounded,
            //           color: Colors.white,
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
