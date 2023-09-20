import 'package:flutter/material.dart';

AppBar appBar(double height, String currentAddress) {
  TextStyle textStyle1 =
      TextStyle(fontWeight: FontWeight.w300, color: Colors.white);
  return AppBar(
    // flexibleSpace: Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Row(
    //       children: [
    //         Expanded(
    //           child: Text(
    //             currentAddress,
    //             style: TextStyle(color: Colors.white),
    //           ),
    //         ),
    //       ],
    //     )
    //   ],
    // ),
    elevation: 0,
    backgroundColor: Colors.black,
    title: Text(
      'C O N S O L E',
      style: textStyle1,
    ),
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.white, size: 30),
    toolbarHeight: height,
  );
}
