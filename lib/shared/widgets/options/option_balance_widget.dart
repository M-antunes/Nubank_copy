import 'package:flutter/material.dart';

class OptionBalanceWidget extends StatelessWidget {
  final IconData icon;
  final String descriptionText;
  final String smallText;
  final String? bigText;
  final TextStyle? descriptionTextStyle;
  final TextStyle? smallTextStyle;
  final TextStyle? bigTextStyle;

  const OptionBalanceWidget({
    Key? key,
    required this.icon,
    required this.descriptionText,
    this.bigText = "",
    required this.smallText,
    this.descriptionTextStyle,
    this.bigTextStyle,
    this.smallTextStyle,
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
                    descriptionText,
                    style: descriptionTextStyle,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                smallText,
                style: smallTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "$bigText",
                style: bigTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
