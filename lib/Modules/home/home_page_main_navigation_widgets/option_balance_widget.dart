import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/check_balance_page/check_balance_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class OptionBalanceWidget extends StatelessWidget {
  const OptionBalanceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CheckBalancePage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.account_balance_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Conta",
                      style: TextStyles.creditBillText,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Saldo disponível",
                  style: TextStyles.desriptionText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "RS 12.000,00",
                  style: TextStyles.balanceNumber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
