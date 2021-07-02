import 'package:flutter/material.dart';

class OptionLoanWidget extends StatelessWidget {
  final IconData icon;
  final String descriptionText;
  final String smallText;
  final TextStyle? descriptionTextStyle;
  final TextStyle? smallTextStyle;
  final String? limit;
  final TextStyle? limitStyle;
  final String buttonText;
  final TextStyle buttonTextColor;

  const OptionLoanWidget({
    Key? key,
    required this.icon,
    required this.descriptionText,
    required this.smallText,
    this.descriptionTextStyle,
    this.smallTextStyle,
    this.limit = "",
    this.limitStyle,
    required this.buttonText,
    required this.buttonTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 23, left: 23, right: 23),
      color: Colors.white,
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
                    style: descriptionTextStyle,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                smallText,
                style: smallTextStyle,
              ),
            ),
            Text(
              "$limit",
              style: limitStyle,
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
