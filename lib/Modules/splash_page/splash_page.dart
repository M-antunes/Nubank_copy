import 'dart:async';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    goHome();
    return Scaffold(
      backgroundColor: Colors.white,
      body: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(milliseconds: 1100),
        builder: (BuildContext context, double _vap, Widget? child) {
          return Opacity(opacity: _vap, child: child);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: size.height / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0.3, end: 1),
                        duration: Duration(milliseconds: 1800),
                        curve: Curves.decelerate,
                        builder:
                            (BuildContext context, double _val, Widget? child) {
                          return Opacity(
                            opacity: _val,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: _val * size.height / 4.93,
                              ),
                              child: child,
                            ),
                          );
                        },
                        child: Image.asset(
                          'lib/assets/images/nu.png',
                          height: 100,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0.3, end: 1),
                        duration: Duration(milliseconds: 1800),
                        curve: Curves.decelerate,
                        builder:
                            (BuildContext context, double _vam, Widget? child) {
                          return Opacity(
                            opacity: _vam,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: _vam * size.height / 4.93),
                              child: child,
                            ),
                          );
                        },
                        child: Text("Bank", style: TextStyles.splashPageText),
                      ),
                    ),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 3100),
                      child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        curve: Curves.bounceInOut,
                        duration: Duration(seconds: 3),
                        builder:
                            (BuildContext context, double _vaw, Widget? child) {
                          return Opacity(
                            opacity: _vaw,
                            child: Padding(
                              padding: EdgeInsets.only(top: 28),
                              child: child,
                            ),
                          );
                        },
                        child: Text(
                          "Copy",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  goHome() {
    Timer(
      Duration(milliseconds: 4400),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    );
  }
}
