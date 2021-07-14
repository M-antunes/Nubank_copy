import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class ButtonTest extends StatefulWidget {
  const ButtonTest({Key? key}) : super(key: key);

  @override
  _ButtonTestState createState() => _ButtonTestState();
}

class _ButtonTestState extends State<ButtonTest> {
  bool _isShown = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          alignment: Alignment.center,
          child: Center(
              child: Visibility(
            visible: _isShown,
            child: Text("Hello", style: TextStyles.bigNumber),
          )),
        ),
        SizedBox(height: 150),
        MaterialButton(
          onPressed: () {
            setState(() {
              _isShown = !_isShown;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.greyLetter,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Press", style: TextStyles.bigNumber),
            ),
          ),
        ),
      ]),
    );
  }
}
