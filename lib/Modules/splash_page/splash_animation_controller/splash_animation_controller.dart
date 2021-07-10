import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class SplashAnimation extends StatelessWidget {
  final bool rightSide;

  const SplashAnimation({
    Key? key,
    this.rightSide = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (rightSide == true) {
      return TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(milliseconds: 1500),
          builder: (BuildContext content, double _val, Widget? child) {
            return Opacity(
              opacity: _val,
              child: Padding(
                padding: EdgeInsets.only(right: _val * size.width / 3.23),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(".antunes.dev", style: TextStyles.antunesFont)),
              ),
            );
          });
    } else {
      return TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(milliseconds: 1300),
          builder: (BuildContext content, double _val, Widget? child) {
            return Opacity(
              opacity: _val,
              child: Padding(
                padding:
                    EdgeInsets.only(bottom: 8, left: _val * size.width / 3.23),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "m",
                    style: TextStyles.mFont,
                  ),
                ),
              ),
            );
          });
    }
  }
}
