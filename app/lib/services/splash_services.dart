import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:resq/screens/auth/agency/login_screen.dart';
import 'dart:async';

import 'package:resq/screens/ui/agency/home_agency.dart';
import 'package:resq/screens/ui/citizens/home_screen_ctz.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashServices {
  void isLogin(BuildContext context) async {
    final authUser = FirebaseAuth.instance;
    final user = authUser.currentUser;

    if (user != null) {
      List<UserInfo> providerData = user.providerData;
      for (UserInfo userInfo in providerData) {
        // Check the provider ID to determine the sign-in method
        if (userInfo.providerId == 'password') {
          // User signed in with email/password
          Timer(Duration(seconds: 4), () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeAgency()));
          });
        } else {
          // User signed in with Google or using OTP
          Timer(Duration(seconds: 4), () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => HomeCitizen()));
          });
        }
      }
    } else
      Timer(Duration(seconds: 4), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      });
  }
}
