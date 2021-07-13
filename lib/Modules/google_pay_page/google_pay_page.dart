import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/navigator_grey_button_widget/navigator_grey_button_widget.dart';

class GooglePayPage extends StatelessWidget {
  const GooglePayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Padding(
          padding: EdgeInsets.only(left: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              NavigatorGreyButtonWidget(
                  icon: Icons.close, navigator: HomePage()),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(50),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text("Escolha o cartão para registrar",
                style: TextStyles.bigNumber),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone_android_sharp,
                        size: 20,
                        color: Colors.grey[700],
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Físico",
                            style: TextStyles.desriptionTextBold,
                          ),
                          Text(
                            "**** 7676",
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: () {
                      goToPage(context, ThankYouPage());
                    },
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide(
                          style: BorderStyle.solid,
                          color: AppColors.greyLetter)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0))),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(children: [
                        Text(
                          "Adicionar ao ",
                          style: TextStyles.greyDescriptionBold,
                        ),
                        Image.asset(
                          'lib/assets/images/g.icon.png',
                          height: 20,
                        ),
                        Text(" Pay", style: TextStyles.greyDescriptionBold)
                      ]),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

//-----------------------FUNÇÃO----------------------------
  goToPage(BuildContext context, Widget navigator) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => navigator,
      ),
    );
  }
}
