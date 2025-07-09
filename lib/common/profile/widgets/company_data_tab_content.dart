import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_labled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../l10n/app_localizations.dart';

class CompanyDataTabContent extends StatelessWidget {
  const CompanyDataTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return SafeArea(
      top: false,
      right: false,
      left: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ChevronLabeledTextField(
            label: t.company_name_in_english,
            hintText: t.company_name_in_english,
            icon: SvgPicture.asset('assets/icons/company.svg'),
          ),
          const SizedBox(height: 24.0),
          ChevronLabeledTextField(
            label: t.company_owner_name,
            hintText: t.company_owner_name,
            icon: SvgPicture.asset('assets/icons/person.svg'),
          ),
          const SizedBox(height: 24.0),
          ChevronLabeledTextField(
            label: t.id_number,
            hintText: t.id_number,
            icon: SvgPicture.asset('assets/icons/id.svg'),
          ),
          const SizedBox(height: 24.0),
          ChevronLabeledTextField(
            label: t.general_manager,
            hintText: t.general_manager,
            icon: SvgPicture.asset('assets/icons/manager.svg'),
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
