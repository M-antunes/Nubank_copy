import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/help_me_page/help_me_page_widget.dart';
import 'package:nubank_copy/Modules/thank_you_page/thank_you_page.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/shared/widgets/appbar_button_widget/appbar_button_widget.dart';

class HelpMePage extends StatelessWidget {
  const HelpMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppbarButtonWidget(
                      hasCloseButton: true,
                      hasShape: false,
                      icon: Icons.arrow_back,
                      color: AppColors.greyLetter,
                      buttonColor: AppColors.secondary,
                    ),
                    Text(
                      "Me Ajuda",
                      style: TextStyles.desriptionTextBold,
                    ),
                    SizedBox(width: 80),
                  ],
                ),
                SizedBox(height: 15),
                Center(
                  child: Container(
                    width: 360,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: TextField(
                        style: TextStyles.balanceNumberGrey,
                        cursorHeight: 28,
                        cursorColor: AppColors.greyLetter,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusColor: AppColors.greyLetter,
                          isDense: true,
                          icon: Icon(
                            Icons.search,
                            size: 30,
                            color: AppColors.greyLetter,
                          ),
                          hintText: "Qual ?? sua d??vida?",
                          hintStyle: TextStyles.balanceNumberGrey,
                          counterStyle: TextStyles.balanceNumberGrey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            preferredSize: Size.fromHeight(130)),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              children: [
                HelpMePageWidget(
                  upperText: "App do Nubank",
                  belowText: "Saiba mais sobre a tela inicial do seu app.",
                ),
                HelpMePageWidget(
                  upperText: "Pix",
                  belowText: "Conhe??a o novo meio de pagamento.",
                ),
                HelpMePageWidget(
                  upperText: "Pagamenos no WhatsApp",
                  belowText: "Tudo sobre pagamentos que acontecem direto...",
                ),
                HelpMePageWidget(
                  upperText: "Easynvest by Nubank",
                  belowText: "Informa????es gerais sobre a Easynvest.",
                ),
                HelpMePageWidget(
                  upperText: "Fundos de Investimentos",
                  belowText: "Fundos de investimentos do Nubank.",
                ),
                HelpMePageWidget(
                  upperText: "Novidades",
                  belowText: "Tudo sobre o Nubank e nossos produtos.",
                ),
                HelpMePageWidget(
                  upperText: "Conta",
                  belowText: "Conhe??a tudo sobre a sua conta digital.",
                ),
                HelpMePageWidget(
                  upperText: "Pagar Fatura",
                  belowText: "Descubra como e onde pagar sua fatura.",
                ),
                HelpMePageWidget(
                  upperText: "Parcelar Fatura",
                  belowText: "Veja como parcelar sua fatura.",
                ),
                HelpMePageWidget(
                  upperText: "Cart??o Virtual",
                  belowText: "Conhe??a as funcionalidades do cart??o virtual.",
                ),
                HelpMePageWidget(
                  upperText: "Rewards",
                  belowText: "Tudo sobre o nosso programa de fidelidade.",
                ),
                HelpMePageWidget(
                  upperText: "Fatura Atrasada",
                  belowText: "Saiba sobre suas op????es de pagamento.",
                ),
                HelpMePageWidget(
                  upperText: "Empr??stimo Atrasado",
                  belowText: "Informa????es sobre seu empr??stimo em atraso.",
                ),
                HelpMePageWidget(
                  upperText: "Compras com o cart??o",
                  belowText: "Informa????es sobre suas compras no cart??o.",
                ),
                HelpMePageWidget(
                  upperText: "Problemas com compras na fun????o cr??dito",
                  belowText: "D??vidas sobre cancelamento e estorno?",
                ),
                HelpMePageWidget(
                  upperText:
                      "Problemas com compras na fun????o d??bito ou cr??dito?",
                  belowText: "D??vidas sobre cancelamento e estorno?",
                ),
                HelpMePageWidget(
                  upperText: "Empr??stimo com Portabilidade de Sal??rio",
                  belowText:
                      "Tire suas d??vidas sobre o empr??stimo com taxas...",
                ),
                HelpMePageWidget(
                  upperText: "Compras no exterior",
                  belowText: "Cota????o, convers??o, IOF e Spread.",
                ),
                HelpMePageWidget(
                  upperText: "Dados da sua conta",
                  belowText: "Dados cadastrais e senhas.",
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ThankYouPage(),
              ),
            );
          },
          child: Container(
            height: 90,
            child: Column(
              children: [
                Divider(
                  height: 0.5,
                  thickness: 0.5,
                  color: AppColors.greyLetter,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Container(
                    height: 45,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat_outlined,
                            size: 30, color: AppColors.description),
                        SizedBox(width: 15),
                        Text("Converse com a gente",
                            style: TextStyles.desriptionTextBold),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
