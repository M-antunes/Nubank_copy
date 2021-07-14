import 'package:flutter/material.dart';

import 'package:nubank_copy/Modules/credit_card_bill_page/credit_card_bill_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class OptionCardWidget extends StatelessWidget {
  final Widget currentDebt;
  final Widget availableLimit;
  const OptionCardWidget({
    Key? key,
    required this.currentDebt,
    required this.availableLimit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          navigateToPage(context, CreditCardBillPage());
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          margin: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.credit_card),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Cartão de Crédito",
                        style: TextStyles.creditBillText,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "Fatura atual",
                    style: TextStyles.desriptionText,
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0), child: currentDebt),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Limite disponível para compras",
                    style: TextStyles.desriptionText,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2, left: 5),
                  child: availableLimit,
                )
              ],
            ),
          ),
        ));
  }

  navigateToPage(BuildContext context, Widget navigator) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => navigator));
  }
}
