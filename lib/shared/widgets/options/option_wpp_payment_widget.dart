import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';

class OptionWppPaymentWidget extends StatelessWidget {
  final IconData icon;
  final String descriptionText;
  final String smallText;
  final String smallText2;
  final TextStyle? descriptionTextStyle;
  final TextStyle? smallTextStyle;
  final TextStyle? smallTextStyle2;
  final String buttonText;
  final TextStyle buttonTextColor;

  const OptionWppPaymentWidget({
    Key? key,
    required this.icon,
    required this.descriptionText,
    required this.smallText,
    required this.smallText2,
    this.descriptionTextStyle,
    this.smallTextStyle,
    this.smallTextStyle2,
    required this.buttonText,
    required this.buttonTextColor,
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
                    smallText,
                    style: smallTextStyle,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                descriptionText,
                style: descriptionTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                smallText2,
                style: smallTextStyle2,
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
                  style: buttonTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
