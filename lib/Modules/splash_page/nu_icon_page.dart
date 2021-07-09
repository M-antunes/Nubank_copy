import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/splash_page/nubank_animation_controller/nubank_animation_controller.dart';
import 'package:nubank_copy/shared/widgets/navigation_controller/navigation_controller.dart';

class NuIconPage extends StatelessWidget {
  const NuIconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    goToPage(context, HomePage(), 5500);

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: size.height / 1.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CloseChild(onTop: true),
                  CloseChild(onTop: false),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 2700),
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
    );
  }
}
