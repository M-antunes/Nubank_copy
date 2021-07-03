import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class SettingsPageWidget extends StatelessWidget {
  final IconData infoIcon;
  final String text;
  final IconData arrowIcon;
  const SettingsPageWidget({
    Key? key,
    required this.infoIcon,
    required this.text,
    required this.arrowIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 30, left: 10),
          child: Row(
            children: [
              Icon(
                infoIcon,
                color: AppColors.secondary,
              ),
              Text(
                text,
                style: TextStyles.settingOptions,
              ),
              Icon(
                arrowIcon,
                color: AppColors.secondary,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Divider(
            height: 1,
            thickness: 1,
            color: AppColors.secondary,
          ),
        )
      ],
    );
  }
}
