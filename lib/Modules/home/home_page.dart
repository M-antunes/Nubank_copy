import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/navigation_bar/navigation_bar_widget.dart';
import 'package:nubank_copy/shared/widgets/options/option_card_widget.dart';
import 'package:nubank_copy/shared/widgets/options/option_balance_widget.dart';
import 'package:nubank_copy/shared/widgets/options/option_google_pay_widget.dart';
import 'package:nubank_copy/shared/widgets/options/option_life_insurance_widget.dart';
import 'package:nubank_copy/shared/widgets/options/option_loan_widget.dart';
import 'package:nubank_copy/shared/widgets/options/option_wpp_payment_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: ListTile(
                        title: Text.rich(
                          TextSpan(
                            text: "Olá, ",
                            style: TextStyles.gereeting,
                            children: [
                              TextSpan(
                                text: "Marcelo",
                                style: TextStyles.userName,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppbarButtonWidget(icon: Icons.remove_red_eye_outlined),
                  AppbarButtonWidget(icon: Icons.settings_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OptionCardWidget(
              icon: Icons.credit_card,
              descriptionText: "Cartão de Crédito",
              descriptionTextStyle: TextStyles.creditBillText,
              smallText: "Fatura atual",
              smallTextStyle: TextStyles.creditLimit,
              bigText: "RS 700,00",
              bigTextStyle: TextStyles.creditBillNumber,
              smallText2: "Limite disponível para compras ",
              smallText2Style: TextStyles.creditLimit,
              limit: "RS 1500,00",
              limitStyle: TextStyles.creditAvailableLimit,
            ),
            OptionBalanceWidget(
              icon: Icons.account_balance_outlined,
              descriptionText: "Conta",
              descriptionTextStyle: TextStyles.creditBillText,
              smallText: "Saldo disponível",
              smallTextStyle: TextStyles.creditLimit,
              bigText: "RS 12000,00",
              bigTextStyle: TextStyles.balanceNumber,
            ),
            OptionLoanWidget(
              icon: Icons.local_atm_outlined,
              descriptionText: "Empréstimo",
              descriptionTextStyle: TextStyles.creditBillText,
              smallText: "Valor disponível de até",
              smallTextStyle: TextStyles.desriptionText,
              limit: "RS 25000,00",
              limitStyle: TextStyles.desriptionTextBold,
              buttonText: "Simular Empréstimo",
              buttonTextColor: TextStyles.loanIconText,
            ),
            OptionLifeInsuranceWidget(
              icon: Icons.health_and_safety_outlined,
              bigText: "Seguro de Vida",
              bigTextStyle: TextStyles.insuranceText,
              descriptionText:
                  "Conheça o Nubank Vida: um seguro simples e que cabe no bolso",
              descriptionTextStyle: TextStyles.desriptionText,
              buttonText: "Conhecer",
              buttonTextColor: TextStyles.isuranceButton,
            ),
            OptionWppPaymentWidget(
              icon: Icons.whatshot_outlined,
              smallText: "Pagamentos pelo WhatsApp",
              smallTextStyle: TextStyles.desriptionText,
              descriptionText: "Envie e receba dinheiro sem sair da conversa",
              descriptionTextStyle: TextStyles.desriptionTextBold,
              smallText2:
                  'Os pagamentos no WhatsApp são seguros, rápidos e sem tarifas. Tão fácil quanto mandar uma foto de "bom dia" no grupo da família.',
              smallTextStyle2: TextStyles.desriptionText,
              buttonText: "Quero Conhecer",
              buttonTextColor: TextStyles.isuranceButton,
            ),
            OptionGooglePayWidget(
              icon: Icons.phone_android_outlined,
              smallText: "Google Pay",
              smallTextStyle: TextStyles.creditBillText,
              smallText2: "Use o Google Pay com seus cartões Nubank",
              smallTextStyle2: TextStyles.desriptionText,
              buttonText: "Registrar meu Cartão",
              buttonTextColor: TextStyles.isuranceButton,
            )
          ],
        ),
      ),
    );
  }
}
