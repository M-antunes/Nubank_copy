import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class OptionCardWidget extends StatelessWidget {
  final IconData icon;
  final String descriptionText;
  final String smallText;
  final String bigText;
  final String limit;
  final String smallText2;

  const OptionCardWidget({
    Key? key,
    required this.icon,
    required this.descriptionText,
    required this.smallText,
    this.bigText = "",
    this.limit = "",
    this.smallText2 = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      margin: const EdgeInsets.only(top: 23, left: 23, right: 23),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(icon),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    descriptionText,
                    style: TextStyles.creditBillText,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                smallText,
                style: TextStyles.desriptionText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                bigText,
                style: TextStyles.creditBillNumber,
              ),
            ),
            Text(
              smallText2,
              style: TextStyles.desriptionText,
            ),
            Text(
              limit,
              style: TextStyles.creditAvailableLimit,
            ),
          ],
        ),
      ),
    );
  }
}
