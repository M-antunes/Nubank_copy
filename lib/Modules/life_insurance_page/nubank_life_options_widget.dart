import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class NubankLifeOptionsWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final String text2;
  const NubankLifeOptionsWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[400]),
            child: Icon(
              icon,
              size: 50,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 13),
          Text(
            text,
            style: TextStyles.mediumSizedNumber,
          ),
          SizedBox(height: 14),
          Text(
            text2,
            style: TextStyles.bigDesriptionText,
          )
        ],
      ),
    );
  }
}
