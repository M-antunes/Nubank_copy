import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class Test2 extends StatelessWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          "Test",
          style: TextStyles.gereeting,
        ),
      ),
    );
  }
}
