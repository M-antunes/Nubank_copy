import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class RaiseButton extends StatefulWidget {
  const RaiseButton({Key? key}) : super(key: key);

  @override
  _RaiseButtonState createState() => _RaiseButtonState();
}

class _RaiseButtonState extends State<RaiseButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: MaterialButton(
            child: Text(
              "Open Popup",
              style: TextStyles.balanceNumber,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                      height: size.height / 4,
                      width: size.width,
                      child: Column(children: [
                        Icon(Icons.ac_unit_outlined),
                        Text(
                          "Você quer bloquear temporariamente\n seu cartão?",
                          style: TextStyles.creditBillText,
                        ),
                        Divider(thickness: 0.2, color: AppColors.greyLetter),
                        Row(children: [
                          Text("Cancelar", style: TextStyles.creditBillText),
                          VerticalDivider(
                              thickness: 1,
                              width: 1,
                              color: AppColors.greyLetter),
                          Text("Bloquear", style: TextStyles.creditBillText)
                        ]),
                      ]),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
