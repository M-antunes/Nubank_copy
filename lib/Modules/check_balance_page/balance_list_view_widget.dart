import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class BalanceListViewWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color buttonColor;
  final String text;
  final String text2;
  final String text3;
  final String text4;
  final String date;

  final bool hasPurchase;
  const BalanceListViewWidget({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.buttonColor,
    required this.text,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.date,
    this.hasPurchase = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  icon,
                  size: 28,
                  color: iconColor,
                )),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: TextStyles.desriptionTextBold),
                SizedBox(height: 4),
                Text(text2, style: TextStyles.greyDescription),
                SizedBox(height: 4),
                Text(text3, style: TextStyles.greyDescription),
                SizedBox(height: 4),
                Text(text4, style: TextStyles.greyDescription),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(date, style: TextStyles.greyDescription),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
