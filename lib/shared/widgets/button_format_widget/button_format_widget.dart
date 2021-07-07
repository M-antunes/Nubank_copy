import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class ButtonFormatWidget extends StatelessWidget {
  final String testText;
  final bool thankButton;
  final Widget? route;
  const ButtonFormatWidget({
    Key? key,
    required this.testText,
    this.thankButton = false,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        onPressed: () {
          goToPage(context, route!);
        },
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          side: MaterialStateProperty.all(BorderSide(
              style: BorderStyle.solid,
              color: thankButton == false ? Color(0xff7b1fa2) : Colors.black)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
          ),
        ),
        child: Text(testText,
            style: thankButton == false
                ? TextStyles.isuranceButton
                : TextStyles.balanceNumber),
      ),
    );
  }

  goToPage(BuildContext context, Widget widget) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }
}
