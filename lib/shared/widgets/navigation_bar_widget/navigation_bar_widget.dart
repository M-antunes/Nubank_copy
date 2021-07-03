import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class NavigationBarWidget extends StatelessWidget {
  final IconData icon;
  final String upperText;
  const NavigationBarWidget({
    Key? key,
    required this.icon,
    required this.upperText,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: Colors.grey[50],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Expanded(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        upperText,
                        style: TextStyles.bottomIconText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
