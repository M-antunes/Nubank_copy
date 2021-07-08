import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/pix_page_widgets/pix_page_icon_row_widget.dart';

class AjustLimit extends StatelessWidget {
  const AjustLimit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppbarButtonWidget(
                  hasCloseButton: true,
                  hasShape: false,
                  icon: Icons.arrow_back,
                  color: AppColors.greyLetter,
                  buttonColor: AppColors.secondary,
                ),
                Text(
                  "Ajuste de Limite",
                  style: TextStyles.desriptionTextBold,
                ),
                SizedBox(width: 30),
              ],
            ),
            preferredSize: Size.fromHeight(90)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Toque para digitar o valor que deseja",
                    style: TextStyles.bottomIconText,
                  ),
                ),
              ),
            ),
            Container(
              width: 160,
              child: TextFormField(
                textAlign: TextAlign.center,
                initialValue: "R\$ 1.000,00",
                style: TextStyles.balanceNumber,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "R\$ 1.000,00 disponível para uso",
              style: TextStyles.creditAvailableLimit,
            ),
            SizedBox(height: 50),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "300",
                    style: TextStyles.greyDescription,
                  ),
                  Text(
                    "1000",
                    style: TextStyles.greyDescription,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[500],
              ),
              width: 300,
              height: 7,
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PixPageIconRowWidget(
                hasPageToGo: true,
                route: ThankYouPage(),
                icon: Icons.add,
                text: "   Pedir\naumento",
                // text2: "aumento",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
