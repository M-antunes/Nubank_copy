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
                            icon: Icons.remove_red_eye_outlined,
                            color: AppColors.secondary,
                            buttonColor: AppColors.navigationBarButton,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          child: AppbarButtonWidget(
                              icon: Icons.settings_outlined,
                              color: AppColors.secondary,
                              buttonColor: AppColors.navigationBarButton),
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
            OptionCardWidget(),
            OptionBalanceWidget(),
            OptionLoanWidget(),
            OptionLifeInsuranceWidget(),
            OptionWppPaymentWidget(),
            OptionGooglePayWidget()
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
              NavigationBarWidget(
                icon: Icons.api_outlined,
                upperText: "Pix",
              ),
              NavigationBarWidget(
                icon: Icons.qr_code_2_sharp,
                upperText: "Pagar",
              ),
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
                icon: Icons.account_tree_outlined,
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
                icon: Icons.contact_support_outlined,
                upperText: "Me\najuda",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
