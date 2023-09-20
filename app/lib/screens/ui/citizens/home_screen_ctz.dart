import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:resq/screens/auth/agency/login_screen.dart';

class HomeCitizen extends StatefulWidget {
  const HomeCitizen({super.key});

  @override
  State<HomeCitizen> createState() => _HomeCitizenState();
}

class _HomeCitizenState extends State<HomeCitizen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      floatingActionButton: ElevatedButton(
          onPressed: () async {
            await GoogleSignIn().signOut();
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: ((context) => LoginScreen())));
          },
          child: Text('Logout')),
      backgroundColor: Colors.white,
      body: Center(child: Text('W E L C O M E  C I T I Z E N')),
    );
  }
}
