import 'dart:async';

import 'package:flutter/material.dart';

void goToPage(BuildContext context, route, int time) {
  Timer(Duration(milliseconds: time), () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ),
    );
  });
}
