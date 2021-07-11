import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class HistoryListWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color buttonColor;
  final String text;
  final String text2;
  final String purchaseValue;
  final String parcels;

  final bool hasPurchase;
  const HistoryListWidget({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.buttonColor,
    required this.text,
    required this.text2,
    required this.purchaseValue,
    required this.parcels,
    this.hasPurchase = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.start,
        direction: Axis.horizontal,
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: buttonColor, borderRadius: BorderRadius.circular(50)),
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
              Text(text2, style: TextStyles.greyDescription)
            ],
          ),
          Expanded(
            child: Container(
                child: hasPurchase == true
                    ? addPaymentDescription(purchaseValue, parcels)
                    : Container()),
          )
        ],
      ),
    );
  }

  addPaymentDescription(String purchaseValue, String parcels) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(parcels, style: TextStyles.desriptionTextBold),
        SizedBox(height: 4),
        Text(purchaseValue, style: TextStyles.greyDescription)
      ],
    );
  }
}
