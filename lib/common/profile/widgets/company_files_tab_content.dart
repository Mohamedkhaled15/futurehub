import 'package:future_hub/common/profile/widgets/upload_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';

class CompanyFilesTabContent extends StatelessWidget {
  const CompanyFilesTabContent({super.key});

  void _uploadCommercialRecord() {
    throw UnimplementedError();
  }

  void _uploadChamerOfCommerceBook() {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final labelStyle = theme.textTheme.labelLarge;

    return SafeArea(
      top: false,
      right: false,
      left: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(t.commercial_record, style: labelStyle),
          const SizedBox(height: 12.0),
          UploadButton(
            onPressed: _uploadCommercialRecord,
          ),
          const SizedBox(height: 24.0),
          Text(t.chamber_of_commerce_book, style: labelStyle),
          const SizedBox(height: 12.0),
          UploadButton(
            onPressed: _uploadChamerOfCommerceBook,
          ),
          const SizedBox(height: 24.0),
          ChevronButton(
            child: Text(t.save_changes),
          ),
        ],
      ),
    );
  }
}
