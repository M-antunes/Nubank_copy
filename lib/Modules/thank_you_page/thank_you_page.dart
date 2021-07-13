import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/button_format_widget/button_format_widget.dart';

class ThankYouPage extends StatefulWidget {
  const ThankYouPage({
    Key? key,
  }) : super(key: key);

  @override
  _ThankYouPageState createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  thankYouAnimation("Obrigado por testar\nmeu Nubank Copy", 2),
                  SizedBox(
                    height: 50,
                  ),
                  thankYouAnimation(
                      "Thank you for testing \nmy Nubank Copy", 6),
                ],
              ),
              SizedBox(height: 150),
              DelayedDisplay(
                delay: Duration(seconds: 2),
                child: TweenAnimationBuilder(
                  child: ButtonFormatWidget(
                    testText: "Voltar para HomePage",
                    thankButton: true,
                    route: HomePage(),
                  ),
                  duration: Duration(seconds: 3),
                  curve: Curves.easeIn,
                  tween: Tween<double>(begin: 0, end: 1),
                  builder: (BuildContext context, double _var, Widget? child) {
                    return Opacity(
                      opacity: _var,
                      child: child,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget thankYouAnimation(String? text, int duration) {
    return TweenAnimationBuilder(
      child: Text(
        text!,
        style: TextStyles.balanceNumber,
      ),
      duration: Duration(seconds: duration),
      curve: Curves.easeIn,
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double _var, Widget? child) {
        return Opacity(
          opacity: _var,
          child: child,
        );
      },
    );
  }
}
