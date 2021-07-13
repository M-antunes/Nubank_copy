import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';

class ArrowButtonWidget extends StatelessWidget {
  const ArrowButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: MaterialButton(
          padding: EdgeInsets.all(8),
          color: AppColors.primary,
          shape: CircleBorder(),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ThankYouPage(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
