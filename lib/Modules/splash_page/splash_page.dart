import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/splash_page/nu_icon_page.dart';
import 'package:nubank_copy/Modules/splash_page/splash_animation_controller/splash_animation_controller.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 4100), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NuIconPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Align(
          alignment: Alignment.center,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SplashAnimation(rightSide: false),
                SplashAnimation(rightSide: true),
              ],
            ),
          ]),
        ),
        DelayedDisplay(
            delay: Duration(milliseconds: 2100),
            child: Text("@gmail.com", style: TextStyles.antunesFont)),
        SizedBox(height: 40),
        DelayedDisplay(
            delay: Duration(milliseconds: 2600),
            child: Text("presents:", style: TextStyles.antunesFont)),
      ]),
    );
  }
}
