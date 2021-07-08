import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/button_format_widget/button_format_widget.dart';

class OptionWppPaymentWidget extends StatelessWidget {
  const OptionWppPaymentWidget({
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
                  child: Icon(Icons.whatshot_outlined),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Pagamentos no WhatsApp",
                    style: TextStyles.creditBillText,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Envie e receba dinheiro sem sair da conversa",
                style: TextStyles.desriptionTextBold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Os pagamentos no WhatsApp são seguros, rápidos e sem tarifas. Tão fácil quanto mandar uma foto de "bom dia" no grupo da família.',
                style: TextStyles.desriptionText,
              ),
            ),
            ButtonFormatWidget(
              testText: "Quero Conhecer",
            )
          ],
        ),
      ),
    );
  }
}
