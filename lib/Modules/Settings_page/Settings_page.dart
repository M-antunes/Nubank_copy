import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/settings_page_widgets/settings_page_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(105),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: ListTile(
                        title: Text.rich(
                          TextSpan(
                            text: "Olá, ",
                            style: TextStyles.gereeting,
                            children: [
                              TextSpan(
                                text: "Marcelo",
                                style: TextStyles.userName,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppbarButtonWidget(icon: Icons.close),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Agência 0001 Conta xxxxxxx99-4\nBanco 260 - Nu Pagamentos S.A.",
                style: TextStyles.settingsText,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: size.height,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SettingsPageWidget(
                      hasDivider: true,
                      infoIcon: Icons.mail_outline_sharp,
                      text: "Notificações",
                      arrowIcon: Icons.arrow_forward_ios_sharp,
                    ),
                    SettingsPageWidget(
                      infoIcon: Icons.mail_outline_sharp,
                      text: "Me ajuda",
                      arrowIcon: Icons.arrow_forward_ios_sharp,
                    ),
                    SettingsPageWidget(
                      infoIcon: Icons.mail_outline_sharp,
                      text: "Perfil",
                      arrowIcon: Icons.arrow_forward_ios_sharp,
                    ),
                    SettingsPageWidget(
                      infoIcon: Icons.mail_outline_sharp,
                      text: "Configurar conta",
                      arrowIcon: Icons.arrow_forward_ios_sharp,
                    ),
                    SettingsPageWidget(
                      infoIcon: Icons.mail_outline_sharp,
                      text: "Minhas chaves Pix",
                      arrowIcon: Icons.arrow_forward_ios_sharp,
                    ),
                    SettingsPageWidget(
                      infoIcon: Icons.mail_outline_sharp,
                      text: "Configurar cartão",
                      arrowIcon: Icons.arrow_forward_ios_sharp,
                    ),
                    SettingsPageWidget(
                      infoIcon: Icons.mail_outline_sharp,
                      text: "Pedir conta PJ",
                      arrowIcon: Icons.arrow_forward_ios_sharp,
                    ),
                    SettingsPageWidget(
                      infoIcon: Icons.mail_outline_sharp,
                      text: "Configuração do app",
                      arrowIcon: Icons.arrow_forward_ios_sharp,
                    ),
                    SettingsPageWidget(
                      infoIcon: Icons.mail_outline_sharp,
                      text: "Sobre",
                      arrowIcon: Icons.arrow_forward_ios_sharp,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
