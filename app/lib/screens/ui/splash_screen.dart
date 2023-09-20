import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resq/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices _splashServices = SplashServices();
  bool moto = false;
  final String agencySp = '';
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        moto = true;
      });
    });
    _splashServices.isLogin(context);
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black87,
          Colors.black,
          Colors.black,
          Colors.black,
          Colors.black87,
        ], begin: FractionalOffset(.5, 0), end: FractionalOffset(1, 1))),
        child: Center(
          child: moto
              ? Text(
                  'being one to save many',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w100),
                )
              : Text(
                  'R  e  s  Q +',
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
