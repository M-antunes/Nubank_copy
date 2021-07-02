import 'package:flutter/material.dart';

class OptionLifeInsuranceWidget extends StatelessWidget {
  final IconData icon;
  final String descriptionText;
  final String bigText;
  final TextStyle? descriptionTextStyle;
  final TextStyle? bigTextStyle;
  final String buttonText;
  final TextStyle buttonTextColor;

  const OptionLifeInsuranceWidget({
    Key? key,
    required this.icon,
    required this.descriptionText,
    this.bigText = "",
    this.descriptionTextStyle,
    this.bigTextStyle,
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
                    bigText,
                    style: bigTextStyle,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                descriptionText,
                style: descriptionTextStyle,
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
