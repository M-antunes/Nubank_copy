import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/Settings_page/Settings_page.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/navigation_bar_pages/pix_area_page/pix_area_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PixAreaPage(),
    );
  }
}
