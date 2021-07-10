import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class RowOfIcons extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? text2;
  final Widget? route;
  final bool hasPageToGo;

  const RowOfIcons({
    Key? key,
    required this.icon,
    required this.text,
    this.text2,
    this.route,
    this.hasPageToGo = false,
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
              padding: EdgeInsets.all(6),
              color: Colors.grey[200],
              shape: CircleBorder(),
              onPressed: () {},
              child: IconButton(
                splashRadius: 1,
                iconSize: 30,
                icon: Icon(icon),
                color: Colors.black87,
                onPressed: () {
                  if (hasPageToGo == true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => route!,
                      ),
                    );
                  }
                },
              ),
            ),
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
