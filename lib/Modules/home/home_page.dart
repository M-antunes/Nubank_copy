import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/deposit_page/deposit_page.dart';
import 'package:nubank_copy/Modules/indicate_friends_page/indicate_friends_page.dart';
import 'package:nubank_copy/Modules/navigation_bar_pages/pix_area_page/pix_area_page.dart';
import 'package:nubank_copy/Modules/pay_bill_page/pay_bill_page.dart';
import 'package:nubank_copy/Modules/transfer_page/transfer_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/home_options_widgets/navigation_bar_widget/navigation_bar_widget.dart';
import 'package:nubank_copy/shared/widgets/home_options_widgets/option_balance_widget.dart';
import 'package:nubank_copy/shared/widgets/home_options_widgets/option_card_widget.dart';
import 'package:nubank_copy/shared/widgets/home_options_widgets/option_google_pay_widget.dart';
import 'package:nubank_copy/shared/widgets/home_options_widgets/option_life_insurance_widget.dart';
import 'package:nubank_copy/shared/widgets/home_options_widgets/option_loan_widget.dart';
import 'package:nubank_copy/shared/widgets/home_options_widgets/option_wpp_payment_widget.dart';

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
                navigationPage: PixAreaPage(),
                icon: Icons.api_outlined,
                upperText: "Pix",
              ),
              NavigationBarWidget(
                navigationPage: PayBillPage(),
                icon: Icons.qr_code_2_sharp,
                upperText: "Pagar",
              ),
              NavigationBarWidget(
                navigationPage: IndicateFriendsPage(),
                icon: Icons.perm_contact_cal_outlined,
                upperText: "Indicar\namigos",
              ),
              NavigationBarWidget(
                navigationPage: TransferPage(),
                icon: Icons.arrow_circle_up_outlined,
                upperText: "Transferir",
              ),
              NavigationBarWidget(
                navigationPage: DepositPage(),
                icon: Icons.arrow_circle_down_outlined,
                upperText: "Depositar",
              ),
              NavigationBarWidget(
                navigationPage: PixAreaPage(),
                icon: Icons.local_atm_outlined,
                upperText: "Empréstimos",
              ),
              NavigationBarWidget(
                navigationPage: PixAreaPage(),
                icon: Icons.settings_cell_sharp,
                upperText: "Cartão\nvirtual",
              ),
              NavigationBarWidget(
                navigationPage: PixAreaPage(),
                icon: Icons.phone_android_sharp,
                upperText: "Recarga de\ncelular",
              ),
              NavigationBarWidget(
                navigationPage: PixAreaPage(),
                icon: Icons.account_tree_outlined,
                upperText: "Ajustar\nlimite",
              ),
              NavigationBarWidget(
                navigationPage: PixAreaPage(),
                icon: Icons.no_cell_sharp,
                upperText: "Bloquear\ncartão",
              ),
              NavigationBarWidget(
                navigationPage: PixAreaPage(),
                icon: Icons.arrow_circle_down_outlined,
                upperText: "Cobrar",
              ),
              NavigationBarWidget(
                navigationPage: PixAreaPage(),
                icon: Icons.local_activity_outlined,
                upperText: "Doação",
              ),
              NavigationBarWidget(
                navigationPage: PixAreaPage(),
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
