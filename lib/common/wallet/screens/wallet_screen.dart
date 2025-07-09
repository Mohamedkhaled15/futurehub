import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/labeled_icon_placeholder.dart';
import 'package:future_hub/common/wallet/widgets/transaction_card.dart';
import 'package:future_hub/company/components/company_wallet_card.dart';
import 'package:go_router/go_router.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  Future<void> _onLoadMore() async {
    // return BlocProvider.of<WalletCubit>(context).loadTransactions(context);
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    final user = (state as AuthSignedIn).user;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CompanyHomeWalletCard(
                          onDeposit: () => context.push('/wallet-keyboard'),
                          // isEmployeeDetails: user.type == 'customer',
                          // balance: user.wallet.toString(),
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
                            canLoadMore: true,
                            onLoadMore: _onLoadMore,
                            padding: const EdgeInsets.only(
                              right: 24.0,
                              bottom: 24.0,
                              left: 24.0,
                            ),
                            itemCount:
                                user.company!.transactionHistory?.length ?? 0,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: TransactionCard(
                                    onPressed: () {
                                      context.push(
                                        '/wallet/transaction',
                                        extra: user.company!
                                            .transactionHistory?[index],
                                      );
                                    },
                                    transaction: user
                                        .company!.transactionHistory![index]),
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
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
