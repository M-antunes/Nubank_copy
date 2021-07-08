import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class SettingsPageWidget extends StatelessWidget {
  final IconData infoIcon;
  final String text;
  final bool hasDivider;

  const SettingsPageWidget({
    Key? key,
    required this.infoIcon,
    required this.text,
    this.hasDivider = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        dividerCheck(),
        Padding(
          padding: EdgeInsets.only(top: 20, right: 30, left: 40),
          child: Row(
            children: [
              Icon(
                infoIcon,
                color: AppColors.secondary,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  text,
                  style: TextStyles.settingOptions,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: AppColors.secondary,
              )
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
        ),
      ],
    );
  }

  Widget dividerCheck() {
    if (hasDivider)
      return Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Divider(
          height: 1,
          thickness: 1,
          color: AppColors.secondary,
        ),
      );
    return Container();
  }
}
