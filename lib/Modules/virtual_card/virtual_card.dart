import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/help_me_page/help_me_page.dart';
import 'package:nubank_copy/Modules/pix_area_page/pix_area_page.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';

class VirtualCard extends StatelessWidget {
  const VirtualCard({Key? key}) : super(key: key);

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
                  "CARTÃO VIRTUAL",
                  style: TextStyles.greyDescriptionBold,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PixAreaPage(),
                      ),
                    );
                  },
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HelpMePage(),
                        ),
                      );
                    },
                    child: AppbarButtonWidget(
                      hasCloseButton: true,
                      hasShape: false,
                      hasQrCode: true,
                      icon: Icons.contact_support_outlined,
                      color: AppColors.greyLetter,
                      buttonColor: AppColors.secondary,
                    ),
                  ),
                ),
              ],
            ),
            preferredSize: Size.fromHeight(90)),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 130),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'lib/assets/images/credit_hand.png',
                    height: 250,
                  ),
                ],
              ),
              SizedBox(height: 100),
              Text(
                "Crie um cartão virtual",
                style: TextStyles.balanceNumberGrey,
              ),
              SizedBox(height: 20),
              Text(
                "Use o cartão virtual para comprar em sites e aplicativos com ainda mais segurança e gerencie como quiser. Fica pronto na hora!",
                style: TextStyles.greyDescription,
              ),
              SizedBox(height: 80),
              Divider(
                height: 1,
                thickness: 0.5,
                color: AppColors.greyLetter,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThankYouPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Criar cartão virtual",
                      style: TextStyles.purpleSubtext,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
