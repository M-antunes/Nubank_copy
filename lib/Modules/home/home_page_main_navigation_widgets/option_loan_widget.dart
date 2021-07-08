import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/simulate_loan/simulate_loan.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/button_format_widget/button_format_widget.dart';

class OptionLoanWidget extends StatelessWidget {
  const OptionLoanWidget({
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
      margin: EdgeInsets.only(top: 23, left: 23, right: 23),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.local_atm_outlined),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Empréstimo",
                    style: TextStyles.creditBillText,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Valor disponível de até:",
                style: TextStyles.desriptionText,
              ),
            ),
            Text(
              "RS 25.000,00",
              style: TextStyles.desriptionTextBold,
            ),
            ButtonFormatWidget(
              route: SimulateLoan(),
              testText: "Simular Empréstimo",
            )
          ],
        ),
      ),
    );
  }
}
