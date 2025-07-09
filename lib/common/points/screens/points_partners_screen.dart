import 'package:flutter/material.dart';

class PointPartnersScreen extends StatefulWidget {
  const PointPartnersScreen({super.key});

  @override
  State<PointPartnersScreen> createState() => _PointPartnersScreenState();
}

class _PointPartnersScreenState extends State<PointPartnersScreen> {
  Future<void> _onLoadMore() async {
    // return BlocProvider.of<GiftsCubit>(context).loadBrands(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
    // final t = AppLocalizations.of(context)!;
    //
    // return BlocBuilder<GiftsCubit, GiftsState>(
    //   builder: (context, state) {
    //     if (state is GiftsBrandsLoadingState && state.isFirstFetch) {
    //       return const PaginatorLoadingIndicator();
    //     }
    //     List<GiftBrand> brands = [];
    //     bool canLoadMore = true;
    //
    //     if (state is GiftsBrandsLoadingState) {
    //       brands = state.oldBrands;
    //     } else if (state is GiftsBrandsLoaded) {
    //       brands = state.brands;
    //       canLoadMore = state.canLoadMore;
    //     }
    //
    //     return Scaffold(
    //       backgroundColor: Palette.whiteColor,
    //       appBar: FutureHubAppBar(
    //         title: Text(
    //           t.points_partners,
    //           style: const TextStyle(
    //             fontSize: 22,
    //             color: Palette.blackColor,
    //           ),
    //         ),
    //         context: context,
    //       ),
    //       body: state is GiftsBrandsLoadingState
    //           ? const Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Center(child: CircularProgressIndicator.adaptive()),
    //               ],
    //             )
    //           : InfiniteListView(
    //               empty: Center(
    //                 child: LabeledIconPlaceholder(
    //                   icon: SvgPicture.asset('assets/images/orders.svg'),
    //                   label: t.noPartners,
    //                 ),
    //               ),
    //               canLoadMore: canLoadMore,
    //               onLoadMore: _onLoadMore,
    //               itemBuilder: (_, index) => PointsPartnerCard(
    //                 brand: brands[index],
    //               ),
    //               itemCount: brands.length,
    //             ),
    //     );
    //   },
    // );
  }
}
