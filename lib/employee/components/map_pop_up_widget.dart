import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/employee/orders/models/puncher_branch.dart';
import 'package:go_router/go_router.dart';

class MapPopUpWidget extends StatelessWidget {
  const MapPopUpWidget(
      {super.key,
      required this.title,
      this.imageUrl,
      this.showDirection = false,
      required this.location,
      this.phoneNumber,
      this.distance,
      required this.user,
      this.selectedPuncher,
      required this.onClosed,
      required this.id});

  final String title;
  final String? imageUrl;
  final bool showDirection;
  final String location;
  final String? phoneNumber;
  final int id;
  final String? distance;
  final User user;
  final Punchers? selectedPuncher;
  final void Function()? onClosed;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Palette.whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Center(
                            child: Container(
                              height: 207,
                              width: 253,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: Palette.dangerColor,
                              ),
                              child: CachedNetworkImage(
                                width: 75,
                                height: 75,
                                fit: BoxFit.cover,
                                imageUrl: imageUrl ?? "",
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => Container(
                                    color: Colors.white,
                                    child: const Center(
                                        child: CircularProgressIndicator())),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                              // Image.network(
                              //   imageUrl ?? 'https://unsplash.it/100/100',
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Palette.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/location-d.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              location,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Text(
                                '${t.distanceBetween} : $distance',
                                // distance??"",
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(102, 102, 102, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        if (phoneNumber != null) ...[
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/mobile.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                phoneNumber!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(102, 102, 102, 1),
                                ),
                              )
                            ],
                          ),
                        ],
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ChevronButton(
                            onPressed: () => context.push(
                              '/employee/puncher-create-fuel-screen',
                              extra: {
                                'order': user, // Your User object
                                'selectedPunchers': selectedPuncher,
                              },
                            ),
                            child: Text(
                              t.manager,
                              style: const TextStyle(
                                color: Palette.whiteColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Image.network(
                    //       imageUrl ?? 'https://unsplash.it/100/100',
                    //       width: 75,
                    //       height: 75,
                    //       fit: BoxFit.contain,
                    //     ),
                    //     const SizedBox(width: 12.0),
                    //     Expanded(
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             title,
                    //             style: theme.textTheme.bodyLarge!
                    //                 .copyWith(fontSize: 17, fontWeight: FontWeight.w700),
                    //           ),
                    //           if (showDirection)
                    //             Padding(
                    //               padding: const EdgeInsets.only(top: 16.0),
                    //               child: Row(
                    //                 children: [
                    //                   SvgPicture.asset("assets/icons/location.svg"),
                    //                   const SizedBox(
                    //                     width: 5,
                    //                   ),
                    //                   Text(
                    //                     'على بعد 100م',
                    //                     style: theme.textTheme.bodyMedium!
                    //                         .copyWith(fontSize: 15),
                    //                   )
                    //                 ],
                    //               ),
                    //             )
                    //         ],
                    //       ),
                    //     )
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.grey),
                onPressed: onClosed,
              ),
            ),
          ],
        ));
  }
}
