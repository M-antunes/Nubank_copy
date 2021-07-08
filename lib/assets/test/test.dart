import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 360,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
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
                hintText: "Qual é sua dúvida?",
                hintStyle: TextStyles.balanceNumberGrey,
                counterStyle: TextStyles.balanceNumberGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
