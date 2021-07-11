import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/home/home_page_main_navigation_widgets/block_card/block_card_message.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';

import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class BlockCardIconRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? text2;

  const BlockCardIconRow({
    Key? key,
    required this.icon,
    required this.text,
    this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: MaterialButton(
                padding: EdgeInsets.all(20),
                color: Colors.grey[200],
                shape: CircleBorder(),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return BlockCardMessage();
                    },
                  );
                },
                child: Icon(icon, color: AppColors.description, size: 30)),
          ),
          Text(
            text,
            style: TextStyles.desriptionTextBold,
          ),
          Text(
            text2!,
            style: TextStyles.desriptionTextBold,
          ),
        ],
      ),
    );
  }
}
