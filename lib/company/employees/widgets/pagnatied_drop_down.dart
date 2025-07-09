import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/chevron_dropdown.dart';
import 'package:future_hub/company/employees/model/branch_model.dart';

class PaginatedDropdown extends StatefulWidget {
  final List<BranchData> branches;
  final BranchData? selectedBranch;
  final Function(BranchData) onBranchSelected;
  final VoidCallback onLoadMore;

  const PaginatedDropdown({
    required this.branches,
    this.selectedBranch,
    required this.onBranchSelected,
    required this.onLoadMore,
    Key? key,
  }) : super(key: key);

  @override
  _PaginatedDropdownState createState() => _PaginatedDropdownState();
}

class _PaginatedDropdownState extends State<PaginatedDropdown> {
  late ScrollController _scrollController;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    // Listen for scroll events to trigger pagination
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent &&
          !_isLoadingMore) {
        setState(() => _isLoadingMore = true);
        widget.onLoadMore();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void stopLoading() {
    if (_isLoadingMore) {
      setState(() => _isLoadingMore = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Column(
      children: [
        ChevronDropdown<BranchData>(
          // value: widget.selectedBranch,
          // isExpanded: true,
          labelText: t.choiceBranch,
          items: widget.branches.map((branch) {
            return DropdownMenuItem<BranchData>(
              value: branch,
              child: Text(CacheManager.locale! == const Locale("en")
                  ? branch.title?.en ?? ""
                  : branch.title?.ar ?? ''),
            );
          }).toList(),
          onChanged: (branch) {
            if (branch != null) {
              widget.onBranchSelected(branch);
            }
          },
        ),
        if (_isLoadingMore)
          const CircularProgressIndicator(), // Loading Indicator
      ],
    );
  }
}
