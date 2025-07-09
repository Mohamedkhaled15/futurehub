import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/common/shared/widgets/category_chip.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/company/products/widgets/product_card.dart';
import 'package:future_hub/employee/oil/cubit/best_oil_cubit/best_oil_cubit.dart';
import 'package:go_router/go_router.dart';

class OilSearchCategory {
  final String title;
  final List<CompanyProduct> products;

  const OilSearchCategory({
    required this.title,
    required this.products,
  });
}

class OilSearchResultScreen extends StatefulWidget {
  const OilSearchResultScreen({super.key});

  @override
  State<OilSearchResultScreen> createState() => _OilSearchResultScreenState();
}

class _OilSearchResultScreenState extends State<OilSearchResultScreen> {
  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    var oils = BlocProvider.of<ProductsCubit>(context).oils;

    final categories = [
      OilSearchCategory(title: t.coolants, products: oils['oilCoolants'] ?? []),
      OilSearchCategory(
          title: t.differential, products: oils['oilDifferential'] ?? []),
      OilSearchCategory(
          title: t.differentialFront, products: oils['oilEngine'] ?? []),
      OilSearchCategory(
          title: t.engine, products: oils['oilPowerSteering'] ?? []),
      OilSearchCategory(
          title: t.powerSteering, products: oils['oilTransferBox'] ?? []),
      OilSearchCategory(
          title: t.transferBox,
          products: oils['oilAutomaticTransmission'] ?? []),
      OilSearchCategory(
          title: t.automaticTransmission,
          products: oils['oilManualTransmission'] ?? []),
    ];
    final category = categories[_selectedCategory];

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(t.best_oil_for_your_car),
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: categories.length,
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryChip(
                    title: categories[index].title,
                    selected: index == _selectedCategory,
                    onPressed: () {
                      setState(() => _selectedCategory = index);
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                clipBehavior: Clip.none,
                itemCount: category.products.length,
                itemBuilder: (context, index) {
                  final product = category.products[index];

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: ProductCard(
                      onPressed: () => context.push(
                        '/company/product/${product.id}',
                        extra: product,
                      ),
                      details: true,
                      product: product,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
