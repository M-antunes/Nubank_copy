import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/check_balance_page/balance_list_view_widget.dart';
import 'package:nubank_copy/Modules/check_balance_page/show_description_widget.dart';
import 'package:nubank_copy/Modules/credit_card_bill_page/row_of_icons.dart';
import 'package:nubank_copy/Modules/help_me_page/help_me_page.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/simulate_loan/simulate_loan.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/navigator_grey_button_widget/navigator_grey_button_widget.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class CheckBalancePage extends StatefulWidget {
  const CheckBalancePage({Key? key}) : super(key: key);

  @override
  _CheckBalancePageState createState() => _CheckBalancePageState();
}

class _CheckBalancePageState extends State<CheckBalancePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, right: 5),
            child: Row(
              children: [
                NavigatorGreyButtonWidget(
                    icon: Icons.arrow_back_ios_new_sharp,
                    navigator: HomePage()),
                SizedBox(width: size.width / 1.62),
                NavigatorGreyButtonWidget(
                    icon: Icons.search, navigator: ThankYouPage()),
                NavigatorGreyButtonWidget(
                    icon: Icons.contact_support_outlined,
                    navigator: HelpMePage()),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(130)),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(18),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Saldo disponível",
                        style: TextStyles.greyDescriptionBold),
                    Text("R\$ 12.000,00", style: TextStyles.bigNumber),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            ShowDescriptionWidget(
              icon: Icons.screen_lock_landscape_outlined,
              firstText: "Dinheiro guardado",
              firstStyle: TextStyles.greyDescription,
              number: "R\$ 0,00",
              numberStyle: TextStyles.desriptionTextBold,
              secondText: "",
            ),
            SizedBox(height: 15),
            ShowDescriptionWidget(
              icon: Icons.signal_cellular_alt_outlined,
              firstText: "Rendimento total da conta",
              firstStyle: TextStyles.greyDescription,
              number: "+R\$ 8,98 ",
              numberStyle: TextStyles.creditAvailableLimit,
              secondText: "este mês",
            ),
            SizedBox(height: 25),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: [
                  RowOfIcons(
                      icon: Icons.arrow_circle_down_outlined,
                      text: "Depositar",
                      text2: ""),
                  RowOfIcons(
                      icon: Icons.qr_code_2_sharp, text: "Pagar", text2: ""),
                  RowOfIcons(
                      icon: Icons.arrow_circle_up_outlined,
                      text: "Transferir",
                      text2: ""),
                  RowOfIcons(
                      icon: Icons.local_atm_outlined,
                      text: "Empréstimo",
                      text2: ""),
                  RowOfIcons(
                      icon: Icons.arrow_circle_down_outlined,
                      text: "Cobrar",
                      text2: ""),
                ],
              ),
            ),
            callDividerOnly(),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SimulateLoan(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: size.width / 1.1,
                decoration: BoxDecoration(
                  color: AppColors.bottomIcon,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Icon(
                        Icons.ac_unit_outlined,
                        size: 30,
                        color: AppColors.description,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "R\$ 12.500,00 ",
                              style: TextStyles.desriptionTextBold,
                              children: [
                                TextSpan(
                                    text: "disponível para\nempréstimo",
                                    style: TextStyles.desriptionText),
                              ]),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_forward_ios_outlined,
                              color: AppColors.greyLetter, size: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Histórico", style: TextStyles.balanceNumber),
              ),
            ),
            SizedBox(height: 30),
            BalanceListViewWidget(
                icon: Icons.arrow_circle_up_outlined,
                iconColor: AppColors.darkGreen,
                buttonColor: AppColors.lightGreen,
                text: "Transferência recebida",
                date: "04 MAI",
                text2: "MARCELO *** ANTUNES",
                text3: "R\$ 3.000,00",
                text4: "Pix"),
            callDividerOnly(),
            BalanceListViewWidget(
                icon: Icons.settings_cell_sharp,
                iconColor: AppColors.greyLetter,
                buttonColor: AppColors.bottomIcon,
                text: "Compra no débito",
                date: "01 MAI",
                text2: "Mundo Verde",
                text3: "R\$ 230,00",
                text4: ""),
            callDividerOnly(),
            BalanceListViewWidget(
                icon: Icons.settings_cell_sharp,
                iconColor: AppColors.greyLetter,
                buttonColor: AppColors.bottomIcon,
                text: "Compra no débito",
                date: "28 ABR",
                text2: "Outback",
                text3: "R\$ 134,50",
                text4: ""),
            callDividerOnly(),
            BalanceListViewWidget(
                icon: Icons.arrow_circle_up_outlined,
                iconColor: AppColors.darkGreen,
                buttonColor: AppColors.lightGreen,
                text: "Transferência recebida",
                date: "26 ABR",
                text2: "MARCELO *** ANTUNES",
                text3: "R\$ 1.000,00",
                text4: "Pix"),
            callDividerOnly(),
            BalanceListViewWidget(
                icon: Icons.settings_cell_sharp,
                iconColor: AppColors.greyLetter,
                buttonColor: AppColors.bottomIcon,
                text: "Compra no débito",
                date: "20 ABR",
                text2: "Rener",
                text3: "R\$ 231,50",
                text4: ""),
            callDividerOnly(),
          ]),
        ),
      ),
    );
  }

//  -------------FUNÇÕES ------------------

  callDividerOnly() {
    return Column(
      children: [
        SizedBox(height: 20),
        Divider(height: 1, thickness: 0.2, color: AppColors.greyLetter),
        SizedBox(height: 20),
      ],
    );
  }
}
