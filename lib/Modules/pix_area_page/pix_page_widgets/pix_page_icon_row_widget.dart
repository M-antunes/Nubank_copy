import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class PixPageIconRowWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget route;

  const PixPageIconRowWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: MaterialButton(
              padding: EdgeInsets.all(20),
              color: Colors.grey[200],
              shape: CircleBorder(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => route,
                  ),
                );
              },
              child: Icon(
                icon,
                size: 30,
                color: Colors.black87,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyles.desriptionTextBold,
          ),
        ],
      ),
    );
  }
}
