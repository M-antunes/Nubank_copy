import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';
import 'package:nubank_copy/shared/themes/app_text_styles.dart';
import 'package:nubank_copy/Modules/home/home_page_main_navigation_widgets/block_card/block_card_message.dart';

class OptionBlockCardWidget extends StatelessWidget {
  final IconData icon;
  final String upperText;
  const OptionBlockCardWidget({
    Key? key,
    required this.icon,
    required this.upperText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: (TextButton(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.navigationBarButton,
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            width: 95,
            child: Padding(
              padding: EdgeInsets.only(top: 5, left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    size: 30,
                    color: Colors.grey[300],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          upperText,
                          style: TextStyles.bottomIconText,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return BlockCardMessage();
              },
            );
          })),
    );
  }
}
