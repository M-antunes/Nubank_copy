import 'package:flutter/material.dart';

class OptionGooglePayWidget extends StatelessWidget {
  final IconData icon;
  final String smallText;
  final String smallText2;
  final TextStyle? smallTextStyle;
  final TextStyle? smallTextStyle2;
  final String buttonText;
  final TextStyle buttonTextColor;

  const OptionGooglePayWidget({
    Key? key,
    required this.icon,
    required this.smallText,
    required this.smallText2,
    this.smallTextStyle,
    this.smallTextStyle2,
    required this.buttonText,
    required this.buttonTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 23, left: 23, right: 23),
      color: Colors.white,
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
                    style: smallTextStyle,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
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
