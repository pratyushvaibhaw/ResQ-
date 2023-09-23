import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:resq/screens/auth/agency/login_screen.dart';
import 'package:resq/screens/ui/agency/widgets/get_request.dart';

Drawer drawer(BuildContext context) {
  var auth = FirebaseAuth.instance;
  return Drawer(
    width: 270,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    backgroundColor: Colors.white,
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          SizedBox(
            height: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(
                elevation: 5,
                backgroundColor: Colors.white,
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(width: 1, color: Colors.black),
                )),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GetRequest(context);
              }));
            },
            child: Text('Check help requests',
                style: TextStyle(color: Colors.black)),
          ),
          SizedBox(
            height: 100,
          ),
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
        ],
      ),
    ),
  );
}
