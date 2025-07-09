import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:intl/intl.dart'; // For date formatting

// Define placeholder colors (reuse from reports_screen or define specific)
const Color primaryPurple = Color(0xFF55217F); // Example purple
const Color lightGreyText = Colors.grey;
const Color darkGreyText = Colors.black54;
const Color selectedDateBackground = primaryPurple;
const Color selectedDateText = Colors.white;
const Color todayDateText = primaryPurple;

class CalendarModal extends StatefulWidget {
  final DateTime initialDate;
  final Function(DateTime) onDateSelected;

  const CalendarModal({
    super.key,
    required this.initialDate,
    required this.onDateSelected,
  });

  @override
  State<CalendarModal> createState() => _CalendarModalState();
}

class _CalendarModalState extends State<CalendarModal> {
  late DateTime _selectedDate;
  late DateTime _displayMonth;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
    _displayMonth =
        DateTime(widget.initialDate.year, widget.initialDate.month, 1);
  }

  void _changeMonth(int months) {
    setState(() {
      _displayMonth =
          DateTime(_displayMonth.year, _displayMonth.month + months, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Format month/year header (using intl)
    String monthYear = DateFormat("MMMM yyyy", "en_US").format(_displayMonth);
    // The screenshot shows "December 2025", so using English format here.
    // If Arabic month names are needed, ensure the locale is set correctly
    // and the intl package supports it fully.
    // String monthYearAr = DateFormat("MMMM yyyy", "ar").format(_displayMonth);

    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        // Add padding for the bottom navigation bar/safe area
        bottom: MediaQuery.of(context).padding.bottom + 20,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Take only needed height
        children: [
          _buildHeader(monthYear),
          const SizedBox(height: 16),
          _buildDayLabels(),
          const SizedBox(height: 8),
          _buildCalendarGrid(),
          const SizedBox(height: 24),
          _buildSelectButton(),
        ],
      ),
    );
  }

  Widget _buildHeader(String monthYear) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          monthYear,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: darkGreyText),
        ),
        Row(
          children: [
            _buildHeaderArrow(Icons.arrow_back_ios, () => _changeMonth(-1)),
            const SizedBox(width: 16),
            _buildHeaderArrow(Icons.arrow_forward_ios, () => _changeMonth(1)),
          ],
        ),
      ],
    );
  }

  Widget _buildHeaderArrow(IconData icon, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Icon(icon, color: lightGreyText, size: 18),
    );
  }

  Widget _buildDayLabels() {
    // Assuming Sunday as the first day based on screenshot
    final List<String> dayLabels = ["S", "M", "T", "W", "T", "F", "S"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: dayLabels
          .map((label) => Text(
                label,
                style: const TextStyle(
                    color: lightGreyText, fontWeight: FontWeight.bold),
              ))
          .toList(),
    );
  }

  Widget _buildCalendarGrid() {
    final daysInMonth =
        DateUtils.getDaysInMonth(_displayMonth.year, _displayMonth.month);
    final firstDayOfMonth =
        DateTime(_displayMonth.year, _displayMonth.month, 1);
    // Weekday starts from 1 (Monday) to 7 (Sunday). Adjust for grid starting Sunday.
    int firstWeekday = firstDayOfMonth.weekday;
    // If Sunday is 7, map it to 0 for grid index; otherwise, adjust accordingly.
    int startingOffset = (firstWeekday == 7) ? 0 : firstWeekday;

    // Total cells needed = empty cells before 1st + days in month
    // Rounded up to the nearest multiple of 7 for full weeks.
    int totalCells = ((startingOffset + daysInMonth) / 7).ceil() * 7;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
      ),
      itemCount: totalCells,
      itemBuilder: (context, index) {
        if (index < startingOffset) {
          // Empty cells before the 1st day
          return Container();
        }
        final dayNumber = index - startingOffset + 1;
        if (dayNumber > daysInMonth) {
          // Empty cells after the last day
          return Container();
        }

        final currentDate =
            DateTime(_displayMonth.year, _displayMonth.month, dayNumber);
        final isSelected = DateUtils.isSameDay(_selectedDate, currentDate);
        final isToday = DateUtils.isSameDay(DateTime.now(), currentDate);

        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedDate = currentDate;
            });
          },
          child: Container(
            margin: const EdgeInsets.all(4), // Spacing between dates
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? selectedDateBackground : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Text(
              "$dayNumber",
              style: TextStyle(
                color: isSelected
                    ? selectedDateText
                    : isToday
                        ? todayDateText
                        : darkGreyText,
                fontWeight:
                    isSelected || isToday ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSelectButton() {
    final t = AppLocalizations.of(context)!;
    return ElevatedButton(
      onPressed: () {
        widget.onDateSelected(_selectedDate);
        Navigator.pop(context); // Close the modal
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryPurple,
        minimumSize: const Size(double.infinity, 50), // Full width
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100), // Rounded corners
        ),
      ),
      child: Text(
        t.select_day, // "Select Day"
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
