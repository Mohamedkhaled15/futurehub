import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/puncher/daily_report/cubit/puncher_report_cubit.dart';
import 'package:future_hub/puncher/daily_report/cubit/report_states.dart';
import 'package:future_hub/puncher/daily_report/model/puncher_report_model.dart';
import 'package:future_hub/puncher/daily_report/widgets/calendar_modal.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

// Define placeholder colors (replace with actual Figma colors later)
const Color primaryPurple = Color(0xFF55217F); // Example purple
const Color lightPurpleBackground = Color(0xFFF8F4FC); // Example light purple
const Color cardBackgroundColor = Colors.white;
const Color textColorPrimary = Colors.black87;
const Color textColorSecondary = Color(0xffA3AED0);
const Color iconColor = primaryPurple;
const Color textColorThird = Color(0xff777E92);
const Color textColorFourth = Color(0xff1B2559);
const Color textColorFifth = Color(0xffB0B0B0);
const Color textColorSixth = Color(0xff565656);

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  late DateTime _selectedDate;
  late int _employeeId;
  late String _puncherType;
  late User _user;
  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    // Get initial user data
    final authState = context.read<AuthCubit>().state;
    if (authState is AuthSignedIn) {
      _user = authState.user;
      _employeeId = authState.user.id!;
      _puncherType =
          authState.user.puncherTypes!.contains('Fuel') ? 'Fuel' : 'Services';
    }
  }

  void _showCalendarModal() {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      enableDrag: false,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => CalendarModal(
        initialDate: _selectedDate,
        onDateSelected: (date) {
          if (date.isAfter(DateTime.now())) {
            return;
          }
          setState(() => _selectedDate = date);
          _loadReport();
        },
      ),
    );
  }

  void _loadReport() {
    context.read<PincherReportCubit>().getDailyReport(
          DateFormat('yyyy-MM-dd').format(_selectedDate),
          _employeeId,
          _puncherType,
        );
  }

  String _formatDate(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final format = locale == 'ar'
        ? DateFormat('d MMMM yyyy', 'ar')
        : DateFormat('d MMM yyyy', 'en');
    return format.format(_selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFB),
      appBar: FutureHubAppBar(
        title: Text(
          t.reports,
          style: const TextStyle(
            color: textColorPrimary,
          ),
        ),
        context: context,
      ),
      body: BlocConsumer<PincherReportCubit, PincherReportState>(
        listener: (context, state) {
          if (state is PincherReportError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is PincherReportInitial) {
            WidgetsBinding.instance.addPostFrameCallback((_) => _loadReport());
          }
          return SingleChildScrollView(
            // Allows content to scroll if it overflows
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildDateSelector(context),
                  const SizedBox(height: 16),
                  if (state is PincherReportLoading)
                    const LinearProgressIndicator(),
                  if (state is PincherReportLoaded)
                    _buildReportContent(context, state.report, _user),
                  if (state is PincherReportError) _buildErrorState(context),
                ],
              ),
            ),
          );
        },
      ),
      // Use Padding + BottomAppBar for a button that stays at the bottom
      // but allows content to scroll underneath.
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            context.pushReplacement('/puncher-orders-screen');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryPurple,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100), // Rounded corners
            ),
          ),
          child: Text(
            t.show_order, // "View Orders"
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildReportContent(
      BuildContext context, UserReport report, User user) {
    return Column(
      children: [
        _buildUserInfoCard(report, user),
        const SizedBox(height: 16),
        _buildDailySummaryText(),
        const SizedBox(height: 8),
        if (user.puncherTypes!.contains('Fuel'))
          _buildStatsGrid(report), // <--- Only show if 'Fuel'
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildDateSelector(BuildContext context) {
    return GestureDetector(
      onTap: _showCalendarModal, // Show calendar on tap
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: cardBackgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildArrowButton(Icons.arrow_back, () {
              // Handle previous day
              setState(() {
                _selectedDate = _selectedDate.subtract(const Duration(days: 1));
                _loadReport();
              });
            }),
            Text(
              _formatDate(context),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: primaryPurple,
              ),
            ),
            _buildArrowButton(
              Icons.arrow_forward,
              () {
                if (!_selectedDate
                    .add(const Duration(days: 1))
                    .isAfter(DateTime.now())) {
                  setState(() {
                    _selectedDate = _selectedDate.add(const Duration(days: 1));
                  });
                  _loadReport();
                }
              },
              isDisabled: _selectedDate.isAtSameMomentAs(DateTime(
                DateTime.now().year,
                DateTime.now().month,
                DateTime.now().day,
              )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildArrowButton(IconData icon, VoidCallback onPressed,
      {bool isDisabled = false}) {
    return InkWell(
      onTap: isDisabled ? null : onPressed,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: const BoxDecoration(
          color: primaryPurple, // Purple background for arrows
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white, size: 16),
      ),
    );
  }

  Widget _buildUserInfoCard(UserReport report, User user) {
    final t = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Placeholder for User Avatar
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  width: 62,
                  height: 62,
                  fit: BoxFit.cover,
                  imageUrl: user.image ?? "",
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      user.name ?? "",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: textColorPrimary),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined,
                            color: textColorSecondary, size: 16),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            user.name ?? "",
                            style: const TextStyle(
                                color: textColorSecondary, fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // const SizedBox(height: 16),
          // const Divider(),
          const SizedBox(height: 24),
          // Stats Row (RTL layout assumed by default locale)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildUserStat(t.order_count,
                  report.ordersCount.toString()),
              if (user.puncherTypes!.contains('Fuel'))
                _buildUserStat(t.quantity_count, report.totalQuantity.toString()),
              _buildUserStat(t.total_price, report.totalPrice.toString(),
                  isPrice: true), // "Total Price"
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserStat(String label, String value, {bool isPrice = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: const TextStyle(color: textColorThird, fontSize: 13),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              value,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColorFourth),
            ),
            const SizedBox(
              width: 5,
            ),
            if (isPrice)
              Image.asset(
                'assets/icons/Riyal.png',
                width: 18,
                height: 20,
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildDailySummaryText() {
    final t = AppLocalizations.of(context)!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Icon(Icons.access_time, color: textColorFifth, size: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "${t.today} :  ${_formatDate(context)}", // "Today: 28 April 2025 AD"
            style: const TextStyle(color: textColorFifth, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _buildStatsGrid(UserReport report) {
    final t = AppLocalizations.of(context)!;
    final fuelCards = report.fuelDetails
            ?.map((fuel) => _buildStatCard(
                  icon: Icons.local_gas_station,
                  title: fuel.fuelType ?? 'N/A',
                  value: '${fuel.totalQuantity?.toString() ?? '0'} ${t.liter}',
                  secondaryValue: fuel.totalPrice ?? '0',
                ))
            .toList() ??
        [];

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 1.4,
      children: [
        ...fuelCards,
        _buildTotalPriceCard(t.total_price, report.totalPrice ?? '0'),
      ],
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required String title,
    required String value,
    required String secondaryValue,
  }) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribute space
        children: [
          Icon(icon, color: iconColor, size: 20),
          // const SizedBox(height: 8),
          Text(title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryPurple)),
          // const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value,
                  style: const TextStyle(fontSize: 14, color: textColorSixth)),
              const SizedBox(width: 16),
              CircleAvatar(
                backgroundColor: const Color(0xff55217F),
                radius: 12,
                child: Image.asset(
                  'assets/icons/equal.png',
                  height: 12,
                  width: 12,
                ),
              ),
              const SizedBox(width: 16),
              Text(secondaryValue,
                  style: const TextStyle(fontSize: 14, color: textColorSixth)),
              const SizedBox(width: 4),
              Image.asset(
                'assets/icons/Riyal.png',
                width: 14,
                height: 14,
                color: const Color(0xff565656),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTotalPriceCard(String title, String value) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:
            MainAxisAlignment.center, // Center content vertically
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryPurple)),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: textColorPrimary)),
              const SizedBox(width: 4),
              Image.asset(
                'assets/icons/Riyal.png',
                width: 12,
                height: 12,
                color: const Color(0xff000000),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Icon(Icons.error, size: 50),
          Text(AppLocalizations.of(context)!.something_went_wrong),
        ],
      ),
    );
  }
}
