import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/button_format_widget/button_format_widget.dart';

class IndicateFriendsPage extends StatelessWidget {
  const IndicateFriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarButtonWidget(
                hasCloseButton: true,
                hasShape: false,
                icon: Icons.close,
                color: AppColors.description,
                buttonColor: AppColors.secondary,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Resgate seus amigos da fila do banco",
                style: TextStyles.balanceNumber,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Para cada indicação, um amigo salvo da burocracia",
                  style: TextStyles.desriptionText,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonFormatWidget(
                testText: "Indicar amigos",
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'lib/assets/images/friends1.gif',
                  width: 270,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
