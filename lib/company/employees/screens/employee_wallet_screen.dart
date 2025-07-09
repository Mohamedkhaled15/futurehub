import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/labeled_icon_placeholder.dart';
import 'package:future_hub/common/wallet/models/transaction_model.dart';
import 'package:future_hub/common/wallet/services/wallet_services.dart';
import 'package:future_hub/common/wallet/widgets/balance_card.dart';
import 'package:future_hub/company/employees/widgets/company_employee_transaction_card.dart';

import '../model/driver_model.dart';
import '../widgets/add_balance_bottom_sheet.dart';

class EmployeeWalletScreen extends StatefulWidget {
  final int id;
  final double balance;
  final List<TransactionHistory>? transactionHistory;
  const EmployeeWalletScreen({
    super.key,
    required this.id,
    required this.balance,
    this.transactionHistory,
  });

  @override
  State<EmployeeWalletScreen> createState() => _EmployeeWalletScreenState();
}

class _EmployeeWalletScreenState extends State<EmployeeWalletScreen> {
  final _walletService = WalletService();
  final _transactions = <Transaction>[];
  var _isFirstFetch = true;
  var _isLoading = false;
  var _canLoadMore = true;
  var _page = 0;

  Future<void> _onLoadMore() async {
    // if (_isLoading) return;
    //
    // setState(() {
    //   _isLoading = true;
    // });
    //
    // final transactions = await _walletService.fetchWalletData(
    //   page: _page,
    //   employee: widget.id,
    //   cache: true,
    // );
    //
    // setState(() {
    //   _transactions.addAll(transactions.data);
    //   _canLoadMore = transactions.hasMorePages;
    //   _page++;
    //   _isLoading = false;
    //   _isFirstFetch = false;
    // });
  }

  @override
  void initState() {
    super.initState();
    // _onLoadMore();
  }

  Future<void> _addBalance(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => AddBalanceBottomSheet(id: widget.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final paddingTop = MediaQuery.of(context).padding.top;
    final appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              height: 1.75 * appBarHeight + paddingTop,
              child: FutureHubAppBar(
                title: Text(t.wallet),
                context: context,
              ),
            ),
            Positioned.fill(
              top: paddingTop + appBarHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: BalanceCard(
                      balance: widget.balance.toString(),
                      onDeposit: () {
                        _addBalance(context);
                      },
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      bottom: 18.0,
                    ),
                    child: Text(
                      t.my_transactions,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Expanded(
                    child: InfiniteListView(
                      padding: const EdgeInsets.only(
                        right: 24.0,
                        bottom: 24.0,
                        left: 24.0,
                      ),
                      itemCount: widget.transactionHistory?.length ?? 0,
                      onLoadMore: _onLoadMore,
                      canLoadMore: _canLoadMore,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: EmployeeTransactionCard(
                            // onPressed: () => context.push(
                            //   '/wallet/transaction',
                            //   extra: _transactions[index],
                            // ),
                            transaction: widget.transactionHistory![index],
                          ),
                        );
                      },
                      empty: LabeledIconPlaceholder(
                        icon: SvgPicture.asset(
                            'assets/icons/no-transactions.svg'),
                        label: t.there_are_no_transactions,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
