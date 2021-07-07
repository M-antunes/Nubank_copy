import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/pay_bill_page_widget/pay_bill_page_widget.dart';

class PayBillPage extends StatelessWidget {
  const PayBillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Align(
            alignment: Alignment.topLeft,
            child: AppbarButtonWidget(
              hasShape: false,
              hasCloseButton: true,
              icon: Icons.close,
              color: AppColors.description,
              buttonColor: AppColors.navigationBarButton,
            ),
          ),
          preferredSize: Size.fromHeight(90),
        ),
        body: Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PayBillPageWidget(
                icon: Icons.api_outlined,
                upperText: "Pagar com Pix",
                lowerText: "Leia um QR Code ou cole o código",
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: AppColors.description,
              ),
              PayBillPageWidget(
                icon: Icons.settings_cell_sharp,
                upperText: "Pagar fatura do cartão",
                lowerText: "Libere o limite do seu cartão de crédito",
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: AppColors.description,
              ),
              PayBillPageWidget(
                icon: Icons.qr_code_2_sharp,
                upperText: "Pagar um boleto",
                lowerText: "Contas de luz, água, etc",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
