import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:resq/screens/ui/citizens/home_screen_ctz.dart';

class GoogleLogin {
  login(BuildContext context) async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth!.idToken);
    UserCredential authResult =
        await FirebaseAuth.instance.signInWithCredential(credential);
    debugPrint(authResult.user!.displayName);
    if (authResult.user != null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeCitizen()));
    }
  }
}
