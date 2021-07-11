import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/charge_page/charge_page.dart';
import 'package:nubank_copy/Modules/pay_bill_page/pay_bill_page.dart';
import 'package:nubank_copy/Modules/pix_area_page/pix_page_widgets/pix_page_bottom_options_widget.dart';
import 'package:nubank_copy/Modules/pix_area_page/pix_page_widgets/pix_page_icon_row_widget.dart';
import 'package:nubank_copy/Modules/transfer_page/transfer_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';

class PixAreaPage extends StatefulWidget {
  const PixAreaPage({Key? key}) : super(key: key);

  @override
  _PixAreaPageState createState() => _PixAreaPageState();
}

class _PixAreaPageState extends State<PixAreaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondary,
        body: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarButtonWidget(
                  hasCloseButton: true,
                  hasShape: false,
                  icon: Icons.close,
                  color: AppColors.description,
                  buttonColor: AppColors.secondary),
              Image.asset(
                'lib/assets/images/pix_area.jpeg',
                width: 270,
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Minha área Pix",
                      style: TextStyles.pixPage,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Tudo que você precisa para pagar,\ntransferir ou cobrar.",
                      style: TextStyles.creditBillText,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  PixPageIconRowWidget(
                      icon: Icons.api_outlined,
                      text: "Pagar",
                      route: PayBillPage()),
                  PixPageIconRowWidget(
                    icon: Icons.arrow_circle_up_outlined,
                    text: "Transferir",
                    route: TransferPage(),
                  ),
                  PixPageIconRowWidget(
                    icon: Icons.arrow_circle_down_outlined,
                    text: "Cobrar",
                    route: ChargePage(),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 200,
          color: Colors.grey[200],
          child: Column(
            children: [
              PixPageBottomOptionsWidget(
                infoIcon: Icons.api_outlined,
                text: "Minhas chaves",
              ),
              PixPageBottomOptionsWidget(
                infoIcon: Icons.account_tree_outlined,
                text: "Meu limite Pix",
              ),
              PixPageBottomOptionsWidget(
                infoIcon: Icons.contact_support_outlined,
                text: "Me ajuda",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
