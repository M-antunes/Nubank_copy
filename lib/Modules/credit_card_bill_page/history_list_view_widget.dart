import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class HistoryListWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final String text2;
  const HistoryListWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                icon,
                size: 28,
                color: Colors.green[700],
              )),
          SizedBox(width: 20),
          Column(
            children: [
              Text(text, style: TextStyles.greyDescriptionBold),
              SizedBox(height: 4),
              Text(text2, style: TextStyles.greyDescription)
            ],
          )
        ],
      ),
    );
  }
}
