import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_dropdown.dart';
import 'package:future_hub/employee/oil/cubit/best_oil_cubit/best_oil_cubit.dart';
import 'package:future_hub/employee/oil/cubit/oil_cubit.dart';
import 'package:future_hub/employee/oil/cubit/oil_state.dart';
import 'package:future_hub/employee/oil/models/car_brand.dart';
import 'package:future_hub/employee/oil/models/car_model.dart';
import 'package:future_hub/employee/oil/models/car_year.dart';
import 'package:go_router/go_router.dart';

import '../../../common/shared/widgets/flutter_toast.dart';

class OilSearchScreen extends StatefulWidget {
  const OilSearchScreen({super.key});

  @override
  State<OilSearchScreen> createState() => _OilSearchScreenState();
}

class _OilSearchScreenState extends State<OilSearchScreen> {
  Brand? _brand;
  Model? _model;
  Year? _year;
  late OilCubit _oilCubit;

  @override
  void initState() {
    super.initState();
    _oilCubit = context.read<OilCubit>();
  }

  Future<void> _onBrandChanged(Brand? brand) async {
    setState(() => _brand = brand);
    _oilCubit.chooseCarBrand(brand?.id);
  }

  @override
  void dispose() {
    _oilCubit.chooseCarBrand(null);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(t.best_oil_for_your_car),
        context: context,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: BlocBuilder<OilCubit, OilState>(
            builder: (context, state) {
              if (state is! OilSearchState) return Container();

              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ChevronDropdown(
                    onChanged: _onBrandChanged,
                    labelText: t.choose_car_make,
                    items: state.brands
                        .map(
                          (brand) => DropdownMenuItem(
                            value: brand,
                            child: Text(
                                CacheManager.locale! == const Locale("en")
                                    ? brand.title?.en ?? ""
                                    : brand.title?.ar ?? ""),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 24.0),
                  ChevronDropdown(
                    onChanged: (model) => setState(() => _model = model),
                    labelText: t.choose_car_model,
                    items: state.models
                        .map(
                          (model) => DropdownMenuItem(
                            value: model,
                            child: Text(
                                CacheManager.locale! == const Locale("en")
                                    ? model.title?.en ?? ""
                                    : model.title?.ar ?? ""),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 24.0),
                  ChevronDropdown(
                    onChanged: (year) => setState(() => _year = year),
                    labelText: t.choose_manufacture_year,
                    items: state.years
                        .map(
                          (year) => DropdownMenuItem(
                            value: year,
                            child: Text(
                                CacheManager.locale! == const Locale("en")
                                    ? year.title?.en ?? ""
                                    : year.title?.ar ?? ""),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 24.0),
                  const Spacer(),
                  ChevronButton(
                    onPressed: () async {
                      // TODO: search for oil

                      if (_brand?.id == null &&
                          _model?.id == null &&
                          _year?.id == null) {
                        showToast(
                          text: 'اكمل البيانات',
                          state: ToastStates.success,
                        );
                      } else {
                        debugPrint(_brand?.id.toString());
                        debugPrint(_model?.id.toString());
                        debugPrint(_year?.id.toString());
                        setState(() {
                          BlocProvider.of<ProductsCubit>(context).loadProducts(
                              context,
                              _brand!.id ?? 0,
                              _brand!.id ?? 0,
                              _year!.id ?? 0);
                        });

                        context.push('/employee/oil/result');
                      }
                    },
                    child: Text(t.search),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
