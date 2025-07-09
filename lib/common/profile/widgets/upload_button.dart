import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_dashed_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../l10n/app_localizations.dart';

class UploadButton extends StatelessWidget {
  final void Function()? onPressed;

  const UploadButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return ChevronDashedBorder(
      child: ChevronButton(
        onPressed: onPressed,
        style: ChevronButtonStyle.dashed(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/upload.svg'),
            const SizedBox(width: 8.0),
            Text(t.upload_the_file),
          ],
        ),
      ),
    );
  }
}
