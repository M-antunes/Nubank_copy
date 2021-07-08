import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class HelpMePageWidget extends StatelessWidget {
  final String upperText;
  final String belowText;
  final bool hasDivider;
  const HelpMePageWidget({
    Key? key,
    required this.upperText,
    required this.belowText,
    this.hasDivider = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        dividerCheck(),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  upperText,
                  style: TextStyles.desriptionTextBold,
                ),
                SizedBox(height: 5),
                Text(
                  belowText,
                  style: TextStyles.greyDescription,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25),
          child: Divider(
            height: 1,
            thickness: 0.4,
            color: AppColors.greyLetter,
          ),
        ),
      ],
    );
  }

  Widget dividerCheck() {
    if (hasDivider)
      return Padding(
        padding: EdgeInsets.only(top: 20),
        child: Divider(
          height: 1,
          thickness: 1,
          color: AppColors.secondary,
        ),
      );
    return Container();
  }
}
