import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FileItem extends StatelessWidget {
  final String name;
  final void Function()? onDelete;

  const FileItem({
    super.key,
    required this.name,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      color: Palette.successColor.withOpacity(0.04),
      padding: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 24.0,
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/excel.svg'),
          const SizedBox(width: 12.0),
          Text(
            name,
            style: theme.textTheme.bodyLarge,
          ),
          const Spacer(),
          GestureDetector(
            onTap: onDelete,
            child: CircleAvatar(
              radius: 15.0,
              backgroundColor: Palette.dangerColor,
              child: SvgPicture.asset(
                'assets/icons/delete-outlined.svg',
                height: 18.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
