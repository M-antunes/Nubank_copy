import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/transfer_page_widget/transfer_page_widget.dart';

class DepositPage extends StatelessWidget {
  const DepositPage({Key? key}) : super(key: key);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppbarButtonWidget(
                    hasCloseButton: true,
                    hasShape: false,
                    icon: Icons.close,
                    color: AppColors.description,
                    buttonColor: AppColors.secondary,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Como você quer depositar na sua conta do Nubank?",
                      style: TextStyles.pixPage,
                    ),
                    SizedBox(height: 20),
                    TransferPageWidget(
                      infoIcon: Icons.api_outlined,
                      mainText: "Pix",
                      textBelow:
                          "Sem custo e cai na hora, mesmo de\nmadrugada e fim de semana.",
                    ),
                    TransferPageWidget(
                      infoIcon: Icons.qr_code_2_sharp,
                      mainText: "Boleto",
                      textBelow:
                          "Sem custo e pode levar três dias úteis para o\ndinheiro cair.",
                    ),
                    TransferPageWidget(
                      infoIcon: Icons.switch_camera_sharp,
                      mainText: "TED/DOC",
                      textBelow:
                          "Pode ter custo e cai somente em horário\ncomercial de dias úteis.",
                    ),
                    TransferPageWidget(
                      infoIcon: Icons.collections_bookmark_sharp,
                      mainText: "Trazer seu salário",
                      textBelow:
                          "Receba todo mês direto aqui na sua conta,\nsem custo",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
