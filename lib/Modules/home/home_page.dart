import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/ajust_limit/ajust_limit_page.dart';
import 'package:nubank_copy/Modules/charge_page/charge_page.dart';
import 'package:nubank_copy/Modules/deposit_page/deposit_page.dart';
import 'package:nubank_copy/Modules/donate/donate_page.dart';
import 'package:nubank_copy/Modules/help_me_page/help_me_page.dart';
import 'package:nubank_copy/Modules/home/home_page_bottom_navigation/navigation_bar_widget.dart';
import 'package:nubank_copy/Modules/home/home_page_main_navigation_widgets/option_balance_widget.dart';
import 'package:nubank_copy/Modules/home/home_page_main_navigation_widgets/block_card/option_block_card_widget.dart';
import 'package:nubank_copy/Modules/home/home_page_main_navigation_widgets/option_card_widget.dart';
import 'package:nubank_copy/Modules/home/home_page_main_navigation_widgets/option_google_pay_widget.dart';
import 'package:nubank_copy/Modules/home/home_page_main_navigation_widgets/option_life_insurance_widget.dart';
import 'package:nubank_copy/Modules/home/home_page_main_navigation_widgets/option_loan_widget.dart';
import 'package:nubank_copy/Modules/home/home_page_main_navigation_widgets/option_wpp_payment_widget.dart';
import 'package:nubank_copy/Modules/indicate_friends_page/indicate_friends_page.dart';
import 'package:nubank_copy/Modules/pix_area_page/pix_area_page.dart';
import 'package:nubank_copy/Modules/pay_bill_page/pay_bill_page.dart';
import 'package:nubank_copy/Modules/phone_credit/phone_credit.dart';
import 'package:nubank_copy/Modules/simulate_loan/simulate_loan.dart';
import 'package:nubank_copy/Modules/transfer_page/transfer_page.dart';
import 'package:nubank_copy/Modules/virtual_card/virtual_card.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isShown = true;

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
              padding: EdgeInsets.only(top: 70),
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
                                text: "Usuário",
                                style: TextStyles.userName,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 70,
                          child: MaterialButton(
                            padding: EdgeInsets.all(15),
                            color: AppColors.navigationBarButton,
                            shape: CircleBorder(),
                            child: _isShown
                                ? Icon(Icons.remove_red_eye_outlined,
                                    size: 28, color: AppColors.secondary)
                                : Icon(Icons.horizontal_rule,
                                    size: 28, color: AppColors.secondary),
                            onPressed: () {
                              setState(() {
                                _isShown = !_isShown;
                              });
                            },
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
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            OptionCardWidget(
                currentDebt: _isShown
                    ? Text("R\$ 700,00", style: TextStyles.creditBillNumber)
                    : hideContent(),
                availableLimit: _isShown
                    ? Text("R\$ 1.500,00",
                        style: TextStyles.creditAvailableLimit)
                    : hideContent()),
            OptionBalanceWidget(
                balance: _isShown
                    ? Text("RS 12.000,00", style: TextStyles.balanceNumber)
                    : hideContent()),
            OptionLoanWidget(
                availableLoan: _isShown
                    ? Text("RS 25.000,00", style: TextStyles.desriptionTextBold)
                    : hideContent()),
            OptionLifeInsuranceWidget(),
            OptionWppPaymentWidget(),
            OptionGooglePayWidget()
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
        child: Container(
          height: size.height * 0.151,
          child: ListView(
            physics: BouncingScrollPhysics(),
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
                navigationPage: SimulateLoan(),
                icon: Icons.local_atm_outlined,
                upperText: "Empréstimos",
              ),
              NavigationBarWidget(
                navigationPage: VirtualCard(),
                icon: Icons.settings_cell_sharp,
                upperText: "Cartão\nvirtual",
              ),
              NavigationBarWidget(
                navigationPage: PhoneCredit(),
                icon: Icons.phone_android_sharp,
                upperText: "Recarga de\ncelular",
              ),
              NavigationBarWidget(
                navigationPage: AjustLimit(),
                icon: Icons.account_tree_outlined,
                upperText: "Ajustar\nlimite",
              ),
              OptionBlockCardWidget(
                icon: Icons.no_cell_sharp,
                upperText: "Bloquear\ncartão",
              ),
              NavigationBarWidget(
                navigationPage: ChargePage(),
                icon: Icons.arrow_circle_down_outlined,
                upperText: "Cobrar",
              ),
              NavigationBarWidget(
                navigationPage: DonatePage(),
                icon: Icons.local_activity_outlined,
                upperText: "Doação",
              ),
              NavigationBarWidget(
                navigationPage: HelpMePage(),
                icon: Icons.contact_support_outlined,
                upperText: "Me\najuda",
              ),
            ],
          ),
        ),
      ),
    );
  }

  hideContent() {
    return Container(
        height: 25,
        width: 250,
        decoration: BoxDecoration(color: Colors.grey[300]));
  }
}
