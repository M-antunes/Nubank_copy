import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/pix_area_page/pix_area_page.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/arrow_purple_button/arrow_purple_button_widget.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

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
                  icon: Icons.close,
                  color: AppColors.description,
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
                    icon: Icons.qr_code_2_outlined,
                    color: AppColors.primary,
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
                "Qual é o valor da transferência?",
                style: TextStyles.pixPage,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text.rich(
                  TextSpan(
                    text: "Saldo disponível em conta ",
                    style: TextStyles.desriptionText,
                    children: [
                      TextSpan(
                        text: "RS 12.000,00",
                        style: TextStyles.desriptionTextBold,
                      ),
                    ],
                  ),
                ),
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
            ],
          ),
        ),
        bottomNavigationBar: ArrowButtonWidget(),
      ),
    );
  }
}
