import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/button_format_widget/button_format_widget.dart';

class OptionLifeInsuranceWidget extends StatelessWidget {
  const OptionLifeInsuranceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      margin: const EdgeInsets.only(top: 8, left: 23, right: 23, bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.health_and_safety_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Seguro de Vida",
                    style: TextStyles.insuranceText,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Conheça o Nubank Vida: um seguro simples e que cabe no bolso",
                style: TextStyles.desriptionText,
              ),
            ),
            ButtonFormatWidget(
              testText: "Conhecer",
            )
          ],
        ),
      ),
    );
  }
}
