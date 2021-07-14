import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/settings_page/settings_page_widgets/settings_page_widget.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';
import 'package:nubank_copy/shared/widgets/purple_wide_button_widget/purple_wide_button_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                                text: "Usuário",
                                style: TextStyles.userName,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppbarButtonWidget(
                    hasCloseButton: true,
                    icon: Icons.close,
                    color: AppColors.secondary,
                    buttonColor: AppColors.navigationBarButton,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Agência 0001 Conta xxxxxxx99-4\nBanco 260 - Nu Pagamentos S.A.",
                style: TextStyles.settingsText,
              ),
            ),
          ),
          Column(
            children: [
              SettingsPageWidget(
                hasDivider: true,
                infoIcon: Icons.mail_outline_sharp,
                text: "Notificações",
              ),
              SettingsPageWidget(
                infoIcon: Icons.contact_support_outlined,
                text: "Me ajuda",
              ),
              SettingsPageWidget(
                infoIcon: Icons.perm_contact_cal_outlined,
                text: "Perfil",
              ),
              SettingsPageWidget(
                infoIcon: Icons.account_tree_outlined,
                text: "Configurar conta",
              ),
              SettingsPageWidget(
                infoIcon: Icons.api_outlined,
                text: "Minhas chaves Pix",
              ),
              SettingsPageWidget(
                infoIcon: Icons.settings_cell_sharp,
                text: "Configurar cartão",
              ),
              SettingsPageWidget(
                infoIcon: Icons.store_mall_directory_sharp,
                text: "Pedir conta PJ",
              ),
              SettingsPageWidget(
                infoIcon: Icons.stay_primary_portrait_rounded,
                text: "Configuração do app",
              ),
              SettingsPageWidget(
                infoIcon: Icons.contact_support_outlined,
                text: "Sobre",
              ),
              PurpleWideButtonWidget(
                borderColor: AppColors.secondary,
                textColor: TextStyles.settingsLeaveApp,
                text: "Sair do App",
                route: HomePage(),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
