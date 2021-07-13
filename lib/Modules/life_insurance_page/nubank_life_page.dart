import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/help_me_page/help_me_page.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/life_insurance_page/nubank_life_options_widget.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/navigator_grey_button_widget/navigator_grey_button_widget.dart';
import 'package:nubank_copy/shared/widgets/purple_bottom_button/purple_bottom_button_widget.dart';

class NubankLifePage extends StatelessWidget {
  const NubankLifePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Stack(
                children: [
                  Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/assets/images/header.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: null,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black45),
                          child: NavigatorGreyButtonWidget(
                            icon: Icons.arrow_back_ios_new_rounded,
                            navigator: HomePage(),
                            hasWhiteColor: true,
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black45),
                          child: NavigatorGreyButtonWidget(
                            icon: Icons.contact_support_outlined,
                            navigator: HelpMePage(),
                            hasWhiteColor: true,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "Nubank Vida",
                    style: TextStyles.bigNumber,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Finalmente um seguro de vida simples e acessível para você, com transparência em todas as etapagas.",
                    style: TextStyles.desriptionTextBold,
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      goToPage(context, ThankYouPage());
                    },
                    child: Row(
                      children: [
                        Text("Conhecer mais   ",
                            style: TextStyles.purpleSubtext),
                        Icon(
                          Icons.arrow_forward,
                          color: AppColors.primary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            NubankLifeOptionsWidget(
              icon: Icons.smartphone_outlined,
              text: "Simples como deve ser",
              text2:
                  "Tudo feito de um jeito para que você saiba exatamente o que está contratando.",
            ),
            NubankLifeOptionsWidget(
              icon: Icons.call_to_action_outlined,
              text: "Preço que cabe no bolso",
              text2:
                  "Preço médio inicial de R\$ 9 por mês, sem tarifas escondidas e sem ajustes de preço por idade durante 5 anos. Simples assim..",
            ),
            NubankLifeOptionsWidget(
              icon: Icons.mode_edit_outline_outlined,
              text: "Coberturas personalizáveis e úteis para você",
              text2:
                  "Monte um seguro com coberturas que fazem a diferença para você e para o seu momento de vida.",
            ),
            NubankLifeOptionsWidget(
              icon: Icons.headphones_outlined,
              text: "Se você precisar, estaremos aqui",
              text2:
                  "Facilidade para acionar o seguro pelo aplicativo ou telefone, com um time 100% dedicado a realmente te dar suporte se você precisar.",
            ),
            SizedBox(height: 50),
            Container(
              alignment: Alignment.center,
              height: 100,
              color: Colors.grey[300],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "A aceitação do seguro estará sujeita à análise do risco.",
                  style: TextStyles.desriptionText,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: PurpleBottomButtonWidget(
        text: "Simular meu seguro",
        navigator: ThankYouPage(),
      ),
    );
  }

//-----------------------FUNÇÃO----------------------------
  goToPage(BuildContext context, Widget navigator) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => navigator,
      ),
    );
  }
}
