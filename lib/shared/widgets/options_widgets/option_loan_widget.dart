import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class OptionLoanWidget extends StatelessWidget {
  final IconData icon;
  final String descriptionText;
  final String smallText;
  final String limit;
  final String buttonText;

  const OptionLoanWidget({
    Key? key,
    required this.icon,
    required this.descriptionText,
    required this.smallText,
    this.limit = "",
    required this.buttonText,
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
      margin: EdgeInsets.only(top: 23, left: 23, right: 23),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(icon),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    descriptionText,
                    style: TextStyles.creditBillText,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                smallText,
                style: TextStyles.desriptionText,
              ),
            ),
            Text(
              limit,
              style: TextStyles.desriptionTextBold,
            ),
            Container(
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                child: Text(
                  buttonText,
                  style: TextStyles.isuranceButton,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
