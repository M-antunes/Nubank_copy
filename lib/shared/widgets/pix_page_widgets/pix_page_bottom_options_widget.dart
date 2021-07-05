import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class PixPageBottomOptionsWidget extends StatelessWidget {
  final IconData infoIcon;
  final String text;
  const PixPageBottomOptionsWidget({
    Key? key,
    required this.infoIcon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 30, left: 40),
          child: Row(
            children: [
              Icon(
                infoIcon,
                color: Colors.black87,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  text,
                  style: TextStyles.desriptionTextBold,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.black87,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Divider(
            height: 1,
            thickness: 1,
            color: AppColors.secondary,
          ),
        )
      ],
    );
  }
}
