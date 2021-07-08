import 'package:flutter/material.dart';

class PurpleWideButtonWidget extends StatelessWidget {
  final Color borderColor;
  final TextStyle textColor;

  final String text;
  final Widget route;
  const PurpleWideButtonWidget({
    Key? key,
    required this.borderColor,
    required this.textColor,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 10),
      child: Container(
        child: OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => route,
              ),
            );
          },
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(style: BorderStyle.solid, color: borderColor)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0))),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
            child: Text(
              text,
              style: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
