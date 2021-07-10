import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/credit_card_bill_page/describe_text.dart';
import 'package:nubank_copy/Modules/credit_card_bill_page/row_of_icons.dart';
import 'package:nubank_copy/Modules/help_me_page/help_me_page.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/navigator_grey_button_widget/navigator_grey_button_widget.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class CreditCardBillPage extends StatelessWidget {
  const CreditCardBillPage({Key? key}) : super(key: key);

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
      body: Column(
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
                  SizedBox(width: 40),
                  GreenBarWidget(),
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
                              DrawRoundContainer.container,
                              DescribeText2(
                                  textNumber: "R\$ 2.100,00 >",
                                  numberStyle: TextStyles.balanceNumber,
                                  text: "Limite disponível",
                                  style: TextStyles.greyDescriptionBold),
                            ],
                          ),
                          Row(
                            children: [
                              DrawRoundContainer.container,
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
                              DrawRoundContainer.container,
                              DescribeText2(
                                  textNumber: "R\$ 300,00 >",
                                  numberStyle: TextStyles.balanceNumber,
                                  text: "Próximas faturas",
                                  style: TextStyles.greyDescriptionBold),
                              SizedBox(width: size.width / 10),
                              MaterialButton(
                                  onPressed: () {},
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
                                            style: TextStyles.settingsLeaveApp,
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
          Container(
            margin: EdgeInsets.only(top: 0),
            color: Colors.blue,
            height: 150,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                RowOfIcons(
                    text: "Pagar fatura",
                    text2: "",
                    icon: Icons.qr_code_2_sharp),
                RowOfIcons(
                    text: " Resumo de", text2: "fatura", icon: Icons.list),
                RowOfIcons(
                    text: "Ajustar limite",
                    text2: "",
                    icon: Icons.account_tree_outlined),
                RowOfIcons(
                    text: "Cartão",
                    text2: "virtual",
                    icon: Icons.settings_cell_sharp),
                RowOfIcons(
                    text: "Bloquear",
                    text2: "cartão",
                    icon: Icons.lock_outline),
                RowOfIcons(
                    text: "Indicar", text2: "Amigos", icon: Icons.person_add),
              ],
            ),
          ),
        ],
      ),

      // bottomNavigationBar: Container(
      //     height: size.height / 4.6,
      //     child: ListView(
      //       scrollDirection: Axis.vertical,
      //       physics: BouncingScrollPhysics(),
      //     )),
    );
  }
}

class DrawRoundContainer {
  static final container = Container(
      margin: EdgeInsets.all(15),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.green));
}

class GreenBarWidget extends StatelessWidget {
  const GreenBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          height: size.height / 2.2,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.green),
                height: size.height / 3.4,
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lightBlue),
                height: size.height / 18,
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange),
                height: size.height / 10,
                width: 10,
              ),
            ],
          ),
        ));
  }
}
