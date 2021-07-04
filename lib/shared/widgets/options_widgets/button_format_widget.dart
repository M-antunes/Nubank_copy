import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class ButtonFormatWidget extends StatelessWidget {
  final String testText;
  const ButtonFormatWidget({
    Key? key,
    required this.testText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          side: MaterialStateProperty.all(
              BorderSide(style: BorderStyle.solid, color: Color(0xff7b1fa2))),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
          ),
        ),
        child: Text(
          testText,
          style: TextStyles.isuranceButton,
        ),
      ),
    );
  }
}
