import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/purple_wide_button_widget/purple_wide_button_widget.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          color: AppColors.primary,
        ),
        preferredSize: Size.fromHeight(10),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Text(
              "Doe usando seu cartão de crédito",
              style: TextStyles.purpleSubtext,
            ),
            SizedBox(height: 200),
            Text(
              "Para favorecer nossas iniciativas no combate ao corona vírus, estendemos este convite a você também.",
              textAlign: TextAlign.center,
              style: TextStyles.creditBillText,
            ),
            SizedBox(height: 20),
            Text(
              "Através do aplicativo, agora você pode fazer doações para recursos médicos (Cruz vermelha e Hospital das Clínicas de SP) ou distribuição de alimentos em todo o país (Ação da Cidadania e Central Única de Favelas).",
              textAlign: TextAlign.center,
              style: TextStyles.creditBillText,
            ),
            SizedBox(height: 150),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThankYouPage(),
                  ),
                );
              },
              child: Text(
                "Saiba mais >",
                style: TextStyles.isuranceButton,
              ),
            ),
            PurpleWideButtonWidget(
              text: "QUERO DOAR",
              textColor: TextStyles.purpleSubtext,
              borderColor: AppColors.primary,
              route: ThankYouPage(),
            )
          ],
        ),
      ),
    );
  }
}
