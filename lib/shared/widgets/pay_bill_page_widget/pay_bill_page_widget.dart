import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class PayBillPageWidget extends StatelessWidget {
  final IconData icon;
  final String upperText;
  final String lowerText;
  const PayBillPageWidget({
    Key? key,
    required this.icon,
    required this.upperText,
    required this.lowerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(icon, color: AppColors.primary),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    upperText,
                    style: TextStyles.desriptionTextBold,
                  ),
                  Text(
                    lowerText,
                    style: TextStyles.desriptionText,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
