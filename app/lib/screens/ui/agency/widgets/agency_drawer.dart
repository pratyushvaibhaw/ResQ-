import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:resq/screens/auth/agency/login_screen.dart';

Drawer drawer(BuildContext context) {
  var auth = FirebaseAuth.instance;
  return Drawer(
    width: 270,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    backgroundColor: Colors.white,
    child: SingleChildScrollView(
      child: Column(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14), color: Colors.black),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                currentAccountPictureSize: Size.fromRadius(20),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person_2_rounded),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14))),
                accountName: Text(
                  (auth.currentUser!.email).toString(),
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  // (auth.currentUser!.phoneNumber).toString(),
                  '',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          ElevatedButton(
              onPressed: () {
                auth.signOut();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text('L O G O U T')),
          SizedBox(
            height: 30,
          ),
          // TextButton(onPressed: () {

          // }, child: Text('Contact Us')),
        ],
      ),
    ),
  );
}
