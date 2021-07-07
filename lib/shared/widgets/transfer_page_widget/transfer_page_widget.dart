import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class TransferPageWidget extends StatelessWidget {
  final IconData infoIcon;
  final String mainText;
  final String textBelow;

  const TransferPageWidget({
    Key? key,
    required this.infoIcon,
    required this.mainText,
    required this.textBelow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              infoIcon,
              size: 40,
              color: AppColors.greyLetter,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainText,
                    style: TextStyles.desriptionTextBold,
                  ),
                  SizedBox(height: 5),
                  Text(
                    textBelow,
                    style: TextStyles.greyDescription,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
              color: AppColors.description,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Divider(
            height: 1,
            thickness: 0.5,
            color: AppColors.greyLetter,
          ),
        ),
      ],
    );
  }
}
