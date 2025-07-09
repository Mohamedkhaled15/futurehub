import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/labeled_icon_placeholder.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';
import 'package:go_router/go_router.dart';

import 'compony_employee_card.dart';

class EmployeeOrdersListView extends StatefulWidget {
  final int id;
  final List<DriverOrder>? driverOrder;
  const EmployeeOrdersListView({
    super.key,
    required this.id,
    this.driverOrder,
  });

  @override
  State<EmployeeOrdersListView> createState() => _EmployeeOrdersListViewState();
}

class _EmployeeOrdersListViewState extends State<EmployeeOrdersListView> {
  var _isFirstFetch = true;
  var _isLoading = false;
  var _canLoadMore = true;
  var _page = 0;

  Future<void> _onLoadMore() async {}

  @override
  void initState() {
    super.initState();
    // _onLoadMore();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return InfiniteListView(
      padding: const EdgeInsets.only(
        right: 24.0,
        left: 24.0,
        bottom: 24.0,
      ),
      itemCount: widget.driverOrder?.length ?? 0,
      onLoadMore: _onLoadMore,
      canLoadMore: _canLoadMore,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: GestureDetector(
            onTap: () => context.push(
              '/company/employees/order-details',
              extra: widget.driverOrder![index],
            ),
            child: ComponyEmployeeOrderCard(
              order: widget.driverOrder![index],
            ),
          ),
        );
      },
      empty: LabeledIconPlaceholder(
        icon: SvgPicture.asset('assets/icons/no-orders.svg'),
        label: t.there_are_no_orders,
      ),
    );
  }
}
