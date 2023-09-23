import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:resq/screens/auth/agency/login_screen.dart';
import 'package:resq/screens/ui/agency/home_agency.dart';
import 'package:resq/utils/utils.dart';

class DataInput extends StatelessWidget {
  DataInput({super.key});
  final firestore = FirebaseFirestore.instance.collection('local_bodies');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeAgency()));
            },
            icon: Icon(Icons.logout_outlined),
            color: Colors.grey,
          )
        ],
        title: Text('Add Services'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          firestore.doc('5lT6mYXtZOTX7ZzBwsbKT9wECuk1').set({
            'agency_name': 'Sai Public Health Works',
            'expertise': 'medical',
            'email': 'civic4@gmail.com',
            'phone': 7603270045,
            'team_head': 'Ritwik Saha',
            'area': 'North Kolkata',
            'manpower': 12,
            'vehicles': 2
          }).then((value) {
            Utils().toastMessage('post added');
          }).onError((error, stackTrace) {
            Utils().toastMessage(error.toString());
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text('Add Testing Data Here'),
      ),
    );
  }
}
