import 'package:flutter/material.dart';

class GreenBarWidget extends StatelessWidget {
  const GreenBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: size.height / 2,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green),
                  height: size.height / 3,
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.lightBlue),
                  height: size.height / 18,
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange),
                  height: size.height / 10,
                  width: 10,
                ),
              ],
            ),
          )),
    );
  }
}
