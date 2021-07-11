import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class BlockCardMessage extends StatelessWidget {
  const BlockCardMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Colors.white,
          height: size.height / 3.4,
          width: size.width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 10),
                Icon(
                  Icons.lock_outline,
                  size: 30,
                  color: AppColors.greyLetter,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  child: Text.rich(
                    TextSpan(
                        text: "Você quer",
                        style: TextStyles.creditBillText,
                        children: [
                          TextSpan(
                              text: " bloquear temporariamente",
                              style: TextStyles.desriptionTextBold),
                          TextSpan(text: " o seu cartão?")
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
                // SizedBox(height: 5),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 60,
                  child: Column(
                    children: [
                      Divider(
                          thickness: 0.5,
                          height: 0,
                          color: AppColors.greyLetter),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                              child: Text("Cancelar",
                                  style: TextStyles.balanceNumberGrey),
                            ),
                            IntrinsicHeight(
                              child: Container(
                                  width: 0.5,
                                  height: 60,
                                  color: AppColors.greyLetter),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ThankYouPage(),
                                  ),
                                );
                              },
                              child: Text("Bloquear",
                                  style: TextStyles.balanceNumberPurple),
                            )
                          ]),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
