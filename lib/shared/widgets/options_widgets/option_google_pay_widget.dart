import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class OptionGooglePayWidget extends StatelessWidget {
  final IconData icon;
  final String smallText;
  final String smallText2;
  final String buttonText;

  const OptionGooglePayWidget({
    Key? key,
    required this.icon,
    required this.smallText,
    required this.smallText2,
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
                    smallText,
                    style: TextStyles.creditBillText,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                smallText2,
                style: TextStyles.creditBillText,
              ),
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