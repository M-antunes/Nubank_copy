import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/navigation_bar_widget/navigation_bar_widget.dart';
import 'package:nubank_copy/shared/widgets/options_widgets/option_balance_widget.dart';
import 'package:nubank_copy/shared/widgets/options_widgets/option_card_widget.dart';
import 'package:nubank_copy/shared/widgets/options_widgets/option_google_pay_widget.dart';
import 'package:nubank_copy/shared/widgets/options_widgets/option_life_insurance_widget.dart';
import 'package:nubank_copy/shared/widgets/options_widgets/option_loan_widget.dart';
import 'package:nubank_copy/shared/widgets/options_widgets/option_wpp_payment_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(105),
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
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        SizedBox(
                            width: 70,
                            child: AppbarButtonWidget(
                                icon: Icons.remove_red_eye_outlined)),
                        SizedBox(
                          width: 70,
                          child:
                              AppbarButtonWidget(icon: Icons.settings_outlined),
                        ),
                      ],
                    ),
                  ),
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
              smallText: "Fatura atual",
              bigText: "RS 700,00",
              smallText2: "Limite disponível para compras ",
              limit: "RS 1.500,00",
            ),
            OptionBalanceWidget(
              icon: Icons.account_balance_outlined,
              descriptionText: "Conta",
              smallText: "Saldo disponível",
              bigText: "RS 12.000,00",
            ),
            OptionLoanWidget(
              icon: Icons.local_atm_outlined,
              descriptionText: "Empréstimo",
              smallText: "Valor disponível de até",
              limit: "RS 25.000,00",
              buttonText: "Simular Empréstimo",
            ),
            OptionLifeInsuranceWidget(
              icon: Icons.health_and_safety_outlined,
              bigText: "Seguro de Vida",
              descriptionText:
                  "Conheça o Nubank Vida: um seguro simples e que cabe no bolso",
              buttonText: "Conhecer",
            ),
            OptionWppPaymentWidget(
              icon: Icons.whatshot_outlined,
              smallText: "Pagamentos no WhatsApp",
              descriptionText: "Envie e receba dinheiro sem sair da conversa",
              smallText2:
                  'Os pagamentos no WhatsApp são seguros, rápidos e sem tarifas. Tão fácil quanto mandar uma foto de "bom dia" no grupo da família.',
              buttonText: "Quero Conhecer",
            ),
            OptionGooglePayWidget(
              icon: Icons.phone_android_outlined,
              smallText: "Google Pay",
              smallText2: "Use o Google Pay com seus cartões Nubank",
              buttonText: "Registrar meu Cartão",
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
        child: Container(
          height: size.height * 0.151,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              NavigationBarWidget(icon: Icons.api_outlined, upperText: "Pix"),
              NavigationBarWidget(
                  icon: Icons.qr_code_2_sharp, upperText: "Pagar"),
              NavigationBarWidget(
                icon: Icons.perm_contact_cal_outlined,
                upperText: "Indicar\namigos",
              ),
              NavigationBarWidget(
                icon: Icons.arrow_circle_up_outlined,
                upperText: "Transferir",
              ),
              NavigationBarWidget(
                icon: Icons.arrow_circle_down_outlined,
                upperText: "Depositar",
              ),
              NavigationBarWidget(
                icon: Icons.local_atm_outlined,
                upperText: "Empréstimos",
              ),
              NavigationBarWidget(
                icon: Icons.settings_cell_sharp,
                upperText: "Cartão\nvirtual",
              ),
              NavigationBarWidget(
                icon: Icons.phone_android_sharp,
                upperText: "Recarga de\ncelular",
              ),
              NavigationBarWidget(
                icon: Icons.settings_ethernet_sharp,
                upperText: "Ajustar\nlimite",
              ),
              NavigationBarWidget(
                icon: Icons.no_cell_sharp,
                upperText: "Bloquear\ncartão",
              ),
              NavigationBarWidget(
                icon: Icons.arrow_circle_down_outlined,
                upperText: "Cobrar",
              ),
              NavigationBarWidget(
                icon: Icons.local_activity_outlined,
                upperText: "Doação",
              ),
              NavigationBarWidget(
                icon: Icons.chat_bubble_outline,
                upperText: "Me\najuda",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
