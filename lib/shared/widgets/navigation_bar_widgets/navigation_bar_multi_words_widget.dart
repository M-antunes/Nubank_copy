import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class NavigationBarMultiWordsWidget extends StatelessWidget {
  final IconData icon;
  final String upperText;
  final String lowerText;
  const NavigationBarMultiWordsWidget({
    Key? key,
    required this.icon,
    required this.upperText,
    required this.lowerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: ButtonBar(children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.navigationBarButton,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          width: 95,
          child: Padding(
            padding: EdgeInsets.only(top: 5, left: 5),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 19),
                    child: Text(
                      upperText,
                      style: TextStyles.bottomIconText,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    lowerText,
                    style: TextStyles.bottomIconText,
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
