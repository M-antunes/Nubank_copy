import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/credit_card_bill_page/credit_card_bill_page.dart';
import 'package:nubank_copy/Modules/splash_page/nu_icon_page.dart';
import 'package:nubank_copy/Modules/splash_page/splash_page.dart';
import 'package:nubank_copy/tests/test1.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank Copy',
      theme: ThemeData(),
      home: SlpashPage(),
    );
  }
}
