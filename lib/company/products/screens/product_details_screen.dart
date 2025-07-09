import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/price_text.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String id;
  final CompanyProduct product;
  final bool company;
  final User user;
  final ServicesBranchDeatils selectedPunchers;
  const ProductDetailsScreen(
    this.id, {
    required this.product,
    this.company = true,
    required this.user,
    required this.selectedPunchers,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.services_details,
          style: const TextStyle(
            color: Palette.blackColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        context: context,
      ),
      body: Column(
        children: [
          // Product Image and Title Section
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Image
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/product-back-1.png',
                          height: MediaQuery.sizeOf(context).height * 0.24,
                        ),
                        Image.asset(
                          'assets/icons/product-back-2.png',
                          height: MediaQuery.sizeOf(context).height * 0.24,
                        ),
                        AspectRatio(
                          aspectRatio: 7 / 5,
                          child: Image.network(
                            product.image ??
                                'https://i5.walmartimages.com/asr/462c1ae6-966c-4652-b93e-8559e992d45b.031cacbaeeac39e5a5aaee89579a5e73.jpeg',
                            // fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Product Title
                  Text(
                    CacheManager.locale! == const Locale("en")
                        ? product.title.en ?? ""
                        : product.title.ar ?? "",
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  // const SizedBox(height: 8),
                  //
                  // // Product Brand/Type
                  // Text(
                  //   "Rande 199.2%",
                  //   style: theme.textTheme.titleMedium?.copyWith(
                  //     color: Colors.grey[600],
                  //   ),
                  // ),
                  const SizedBox(height: 40),

                  // Product Description
                  Text(
                    CacheManager.locale! == const Locale("en")
                        ? product.description?.en ?? "No description available"
                        : product.description?.ar ?? "No description available",
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  // const SizedBox(height: 32),
                ],
              ),
            ),
          ),

          // Bottom Action Bar
          SizedBox(
            height: size.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  // Price Display
                  // const Spacer(),
                  // Order Button
                  Expanded(
                    flex: 2,
                    child: ChevronButton(
                      onPressed: () {
                        context.push(
                          '/employee/puncher-create-services-screen',
                          extra: {
                            'user': user, // Your User object
                            'selectedPunchers': selectedPunchers,
                            'product': product,
                          },
                        );
                      },
                      child: Text(t.confirm_payment),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        t.price,
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      PriceText(
                        price: double.parse(product.price),
                        // style: theme.textTheme.headlineSmall?.copyWith(
                        //   fontWeight: FontWeight.bold,
                        // ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
