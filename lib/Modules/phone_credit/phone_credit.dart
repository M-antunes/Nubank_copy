import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/arrow_purple_button/arrow_purple_button_widget.dart';

class PhoneCredit extends StatelessWidget {
  const PhoneCredit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppbarButtonWidget(
                  hasCloseButton: true,
                  hasShape: false,
                  icon: Icons.close,
                  color: AppColors.greyLetter,
                  buttonColor: AppColors.secondary,
                ),
                Text.rich(
                  TextSpan(
                    text: "____",
                    style: TextStyles.purpleSubtext,
                    children: [
                      TextSpan(
                        text: "___________",
                        style: TextStyles.greyDescription,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            preferredSize: Size.fromHeight(90)),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Qual número você quer recarregar?",
                style: TextStyles.pixPage,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                initialValue: "(DDD) + Número",
                style: TextStyles.pixPage,
              ),
            ],
          ),
        ),
        bottomNavigationBar: ArrowButtonWidget(),
      ),
    );
  }
}
