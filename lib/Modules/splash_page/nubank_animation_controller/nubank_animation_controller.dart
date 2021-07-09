import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class CloseChild extends StatelessWidget {
  final bool onTop;

  const CloseChild({
    Key? key,
    this.onTop = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (onTop) {
      return TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(milliseconds: 1500),
          builder: (BuildContext content, double _val, Widget? child) {
            return Opacity(
              opacity: _val,
              child: Padding(
                padding: EdgeInsets.only(top: _val * size.height / 2.7),
                child: Align(
                    alignment: Alignment.topCenter,
                    child:
                        Image.asset('lib/assets/images/nu.png', height: 100)),
              ),
            );
          });
    } else {
      return TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(milliseconds: 1500),
          builder: (BuildContext content, double _val, Widget? child) {
            return Opacity(
              opacity: _val,
              child: Padding(
                padding: EdgeInsets.only(bottom: _val * size.height / 2.7),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("Bank", style: TextStyles.splashPageText)),
              ),
            );
          });
    }
  }
}
