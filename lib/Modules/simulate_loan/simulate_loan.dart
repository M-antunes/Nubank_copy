import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/pix_area_page/pix_area_page.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/button_format_widget/button_format_widget.dart';

class SimulateLoan extends StatelessWidget {
  const SimulateLoan({Key? key}) : super(key: key);

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
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PixAreaPage(),
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
                "O valor disponível no momento é de R\$ 12.500,00?",
                style: TextStyles.balanceNumber,
              ),
              SizedBox(height: 15),
              Text(
                "Este valor pode mudar diariamente devido à nossa análise de crédito.",
                style: TextStyles.greyDescription,
              ),
              SizedBox(height: 20),
              Text(
                "Entenda como funciona >",
                style: TextStyles.isuranceButton,
              ),
              SizedBox(height: 50),
              ButtonFormatWidget(
                route: ThankYouPage(),
                testText: "Novo Empréstimo",
              ),
              SizedBox(height: 20),
              Divider(
                height: 1,
                thickness: 1,
                color: AppColors.greyLetter,
              ),
              SizedBox(height: 35),
              Text(
                "Você não possui nenhum empréstimo ativo.",
                style: TextStyles.greyDescription,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
