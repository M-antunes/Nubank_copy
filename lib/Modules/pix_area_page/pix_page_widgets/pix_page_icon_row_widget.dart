import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_text_styles.dart';

class PixPageIconRowWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget? route;
  final bool hasPageToGo;

  const PixPageIconRowWidget({
    Key? key,
    required this.icon,
    required this.text,
    this.route,
    this.hasPageToGo = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
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
        ],
      ),
    );
  }
}
