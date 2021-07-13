import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/arrow_purple_button/arrow_purple_button_widget.dart';

class ChargePage extends StatelessWidget {
  const ChargePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppbarButtonWidget(
                  hasCloseButton: true,
                  hasShape: false,
                  icon: Icons.close,
                  color: AppColors.greyLetter,
                  buttonColor: AppColors.secondary,
                ),
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
                "Qual valor você quer receber?",
                style: TextStyles.pixPage,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                cursorHeight: 35,
                cursorColor: AppColors.description,
                decoration: InputDecoration(
                  hintText: "R\$ 0,00",
                  hintStyle: TextStyles.pixPage,
                ),
                style: TextStyles.pixPage,
              ),
              SizedBox(height: 30),
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
                  "Não especificar um valor  >",
                  style: TextStyles.isuranceButton,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ArrowButtonWidget(),
      ),
    );
  }
}
