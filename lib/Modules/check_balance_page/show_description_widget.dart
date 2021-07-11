import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class ShowDescriptionWidget extends StatelessWidget {
  final IconData icon;
  final String firstText;
  final TextStyle firstStyle;
  final String number;
  final TextStyle numberStyle;
  final String? secondText;
  final TextStyle? secondStyle;
  const ShowDescriptionWidget({
    Key? key,
    required this.icon,
    required this.firstText,
    required this.firstStyle,
    required this.number,
    required this.numberStyle,
    this.secondText,
    this.secondStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Icon(
              icon,
              size: 30,
              color: AppColors.greyLetter,
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(firstText, style: TextStyles.greyDescription),
                Text.rich(
                  TextSpan(text: number, style: numberStyle, children: [
                    TextSpan(
                        text: secondText, style: TextStyles.greyDescriptionBold)
                  ]),
                ),
              ]),
          Expanded(
              child: Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.arrow_forward_ios_rounded,
                size: 20, color: AppColors.greyLetter),
          ))
        ],
      ),
    );
  }
}
