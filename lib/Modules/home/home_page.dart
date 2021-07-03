import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/navigation_bar/navigation_bar_multi_words_widget.dart';
import 'package:nubank_copy/shared/widgets/navigation_bar/navigation_bar_single_word_widget.dart';
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
        preferredSize: Size.fromHeight(95),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
        child: IntrinsicHeight(
          child: Container(
            height: 125,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                NavigationBarSingleWordWidget(
                    icon: Icons.api_outlined, text: "Pix"),
                NavigationBarSingleWordWidget(
                    icon: Icons.qr_code_2_sharp, text: "Pagar"),
                NavigationBarMultiWordsWidget(
                    icon: Icons.perm_contact_cal_outlined,
                    upperText: "Indicar",
                    lowerText: "amigos"),
                NavigationBarSingleWordWidget(
                    icon: Icons.arrow_circle_up_outlined, text: "Transferir"),
                NavigationBarSingleWordWidget(
                    icon: Icons.arrow_circle_down_outlined, text: "Depositar"),
                NavigationBarSingleWordWidget(
                    icon: Icons.local_atm_outlined, text: "Empréstimos"),
                NavigationBarMultiWordsWidget(
                    icon: Icons.settings_cell_sharp,
                    upperText: "Cartão",
                    lowerText: "virtual"),
                NavigationBarMultiWordsWidget(
                    icon: Icons.phone_android_sharp,
                    upperText: "Recarga de",
                    lowerText: "celular"),
                NavigationBarMultiWordsWidget(
                    icon: Icons.settings_ethernet_sharp,
                    upperText: "Ajustar",
                    lowerText: "limite"),
                NavigationBarMultiWordsWidget(
                    icon: Icons.no_cell_sharp,
                    upperText: "Bloquear",
                    lowerText: "cartão"),
                NavigationBarSingleWordWidget(
                    icon: Icons.arrow_circle_down_outlined, text: "Cobrar"),
                NavigationBarSingleWordWidget(
                    icon: Icons.local_activity_outlined, text: "Doação"),
                NavigationBarMultiWordsWidget(
                    icon: Icons.chat_bubble_outline,
                    upperText: "Me",
                    lowerText: "ajuda"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
