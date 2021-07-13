import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class PurpleBottomButtonWidget extends StatelessWidget {
  final String text;
  const PurpleBottomButtonWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          alignment: Alignment.center,
          height: 60,
          decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            text,
            style: TextStyles.settingsLeaveApp,
          ),
        ),
      ),
    );
  }
}
