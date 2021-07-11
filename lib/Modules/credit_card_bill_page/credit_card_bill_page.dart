import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/ajust_limit/ajust_limit_page.dart';
import 'package:nubank_copy/Modules/credit_card_bill_page/describe_text_widget.dart';
import 'package:nubank_copy/Modules/credit_card_bill_page/draw_round_container_widget.dart';
import 'package:nubank_copy/Modules/credit_card_bill_page/green_bar_widget.dart';
import 'package:nubank_copy/Modules/credit_card_bill_page/history_list_view_widget.dart';
import 'package:nubank_copy/Modules/credit_card_bill_page/row_of_icons.dart';
import 'package:nubank_copy/Modules/help_me_page/help_me_page.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/indicate_friends_page/indicate_friends_page.dart';
import 'package:nubank_copy/Modules/pay_bill_page/pay_bill_page.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/Modules/virtual_card/virtual_card.dart';
import 'package:nubank_copy/shared/navigator_grey_button_widget/navigator_grey_button_widget.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class CreditCardBillPage extends StatefulWidget {
  const CreditCardBillPage({Key? key}) : super(key: key);

  @override
  _CreditCardBillPageState createState() => _CreditCardBillPageState();
}

class _CreditCardBillPageState extends State<CreditCardBillPage> {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SingleChildScrollView(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: size.height / 50),
                          DescribeText(
                              text: "Fatura atual",
                              style: TextStyles.creditBillText,
                              textNumber: "",
                              numberStyle: TextStyles.greyDescriptionBold),
                          DescribeText(
                              text: "R\$ 900,00",
                              style: TextStyles.balanceNumber,
                              textNumber: "",
                              numberStyle: TextStyles.greyDescriptionBold),
                          DescribeText(
                              text: "Limite disponível ",
                              style: TextStyles.greyDescription,
                              textNumber: "R\$2.100,00",
                              numberStyle: TextStyles.greyDescriptionBold),
                          DescribeText(
                              text: "Fecha em ",
                              style: TextStyles.greyDescription,
                              textNumber: "05 AGO",
                              numberStyle: TextStyles.greyDescriptionBold),
                        ],
                      ),
                    ),
                    SizedBox(width: size.width / 2.8),
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Column(
                        children: [
                          GreenBarWidget(),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: size.height / 2.4,
                        width: size.width / 1.05,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                DrawRoundContainer(
                                  padding: 15,
                                  size: 8,
                                  color: Colors.green,
                                ),
                                DescribeText2(
                                    textNumber: "R\$ 2.100,00 >",
                                    numberStyle: TextStyles.balanceNumber,
                                    text: "Limite disponível",
                                    style: TextStyles.greyDescriptionBold),
                              ],
                            ),
                            Row(
                              children: [
                                DrawRoundContainer(
                                  padding: 15,
                                  size: 8,
                                  color: Colors.green,
                                ),
                                DescribeText2(
                                    textNumber: "R\$ 900,00 >",
                                    numberStyle: TextStyles.balanceNumber,
                                    text: "Fatura atual",
                                    style: TextStyles.greyDescriptionBold),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                DrawRoundContainer(
                                  padding: 15,
                                  size: 8,
                                  color: Colors.green,
                                ),
                                DescribeText2(
                                    textNumber: "R\$ 300,00 >",
                                    numberStyle: TextStyles.balanceNumber,
                                    text: "Próximas faturas",
                                    style: TextStyles.greyDescriptionBold),
                                SizedBox(width: size.width / 10),
                                MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ThankYouPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                        height: 50,
                                        width: 130,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.orange),
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Antecipar",
                                              style:
                                                  TextStyles.settingsLeaveApp,
                                            )))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DrawRoundContainer(
                    padding: 6,
                    size: 10,
                    color: Colors.black,
                  ),
                  DrawRoundContainer(
                    padding: 6,
                    size: 10,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0),
              height: 150,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  RowOfIcons(
                    text: "Pagar fatura",
                    text2: "",
                    icon: Icons.qr_code_2_sharp,
                    route: PayBillPage(),
                  ),
                  RowOfIcons(
                      text: " Resumo de", text2: "fatura", icon: Icons.list),
                  RowOfIcons(
                    text: "Ajustar limite",
                    text2: "",
                    icon: Icons.account_tree_outlined,
                    route: AjustLimit(),
                  ),
                  RowOfIcons(
                    text: "Cartão",
                    text2: "virtual",
                    icon: Icons.settings_cell_sharp,
                    route: VirtualCard(),
                  ),
                  RowOfIcons(
                      text: "Bloquear",
                      text2: "cartão",
                      icon: Icons.lock_outline),
                  RowOfIcons(
                      text: "Indicar",
                      text2: "Amigos",
                      icon: Icons.person_add,
                      route: IndicateFriendsPage()),
                ],
              ),
            ),
            callDividerAndDate("04 jul"),
            HistoryListWidget(
              buttonColor: AppColors.lightGreen,
              icon: Icons.event_note_rounded,
              iconColor: AppColors.darkGreen,
              text: "Pagamento recebido",
              text2: "Você pagou R\$275,00",
              parcels: "",
              purchaseValue: "",
            ),
            callDividerAndDate("24 Jun"),
            HistoryListWidget(
              buttonColor: AppColors.lightRed,
              icon: Icons.event_note_rounded,
              iconColor: AppColors.darkRed,
              text: "Fatura fechada",
              text2:
                  "Vence em 05/08, e hoje é o melhor dia\npara fazer compras.",
              parcels: "",
              purchaseValue: "",
            ),
            callDividerAndDate("05 Jun"),
            HistoryListWidget(
              buttonColor: AppColors.lightGreen,
              icon: Icons.event_note_rounded,
              iconColor: AppColors.darkGreen,
              text: "Fatura Paga",
              text2: "Fatura Paga",
              parcels: "",
              purchaseValue: "",
            ),
            callDividerAndDate("04 Mai"),
            HistoryListWidget(
              buttonColor: AppColors.lightGreen,
              icon: Icons.event_note_rounded,
              iconColor: AppColors.darkGreen,
              text: "Pagamento recebido",
              text2: "Você pagou R\$222,00",
              parcels: "",
              purchaseValue: "",
            ),
            callDividerAndDate("27 Mai"),
            HistoryListWidget(
              hasPurchase: true,
              buttonColor: AppColors.bottomIcon,
              icon: Icons.shopping_bag_outlined,
              iconColor: AppColors.description,
              text: "Riachuelo",
              text2: "20:46",
              parcels: "R\$ 390,85",
              purchaseValue: "em 4x",
            ),
            callDividerAndDate("25 Mai"),
            HistoryListWidget(
              hasPurchase: true,
              buttonColor: AppColors.bottomIcon,
              icon: Icons.food_bank_outlined,
              iconColor: AppColors.description,
              text: "Bar Barril 8000",
              text2: "23:21",
              parcels: "R\$ 136,50",
              purchaseValue: "",
            ),
            callDividerAndDate("24 Mai"),
            HistoryListWidget(
              buttonColor: AppColors.lightRed,
              icon: Icons.event_note_rounded,
              iconColor: AppColors.darkRed,
              text: "Fatura fechada",
              text2:
                  "Vence em 05/07, e hoje é o melhor dia\npara fazer compras.",
              parcels: "",
              purchaseValue: "",
            ),
          ],
        ),
      ),
    );
  }

  callDividerOnly() {
    return Column(
      children: [
        SizedBox(height: 20),
        Divider(height: 1, thickness: 0.2, color: AppColors.greyLetter),
        SizedBox(height: 20),
      ],
    );
  }

  callDividerAndDate(String date) {
    return Column(
      children: [
        SizedBox(height: 20),
        Divider(height: 1, thickness: 0.2, color: AppColors.greyLetter),
        SizedBox(height: 30),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              date,
              style: TextStyles.greyDescriptionBold,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  // callGreyLine() {
  //   return Divider(height: 1, thickness: 0.2, color: AppColors.greyLetter);
  // }

  // callDateIndicator(String date) {
  //   return Align(
  //     alignment: Alignment.centerLeft,
  //     child: Padding(
  //       padding: EdgeInsets.only(left: 15),
  //       child: Text(
  //         date,
  //         style: TextStyles.greyDescriptionBold,
  //       ),
  //     ),
  //   );
  // }
}
