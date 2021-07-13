import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/help_me_page/help_me_page.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/navigator_grey_button_widget/navigator_grey_button_widget.dart';
import 'package:nubank_copy/shared/widgets/purple_bottom_button/purple_bottom_button_widget.dart';

class WhatsAppRegisterPage extends StatelessWidget {
  const WhatsAppRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(alignment: AlignmentDirectional.bottomCenter, children: [
            Container(
              height: 600,
              color: AppColors.primary,
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NavigatorGreyButtonWidget(
                            icon: Icons.close,
                            navigator: HomePage(),
                            hasWhiteColor: true),
                        NavigatorGreyButtonWidget(
                            icon: Icons.contact_support_outlined,
                            navigator: HelpMePage(),
                            hasWhiteColor: true),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                        "Envie e receba dinheiro pelo WhatsApp sem nem precisar sair da conversa",
                        style: TextStyles.bigWhiteDescription),
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                height: 100,
                color: AppColors.secondary),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'lib/assets/images/wpp.png',
                    width: size.width / 1.2,
                  )),
            ),
          ]),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.bottomIcon),
                child: Icon(Icons.tag_faces, size: 30)),
          ),
          SizedBox(height: 10),
          Divider(thickness: 0.5, height: 1),
          PurpleBottomButtonWidget(
              text: "Cadastrar no WhatsApp", navigator: ThankYouPage()),
        ],
      ),
    );
  }
}
