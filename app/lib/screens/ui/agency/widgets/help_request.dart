import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> HelpRequest(BuildContext context, String CurrAdd) async {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  final textFieldController = TextEditingController();
  String messageTxt = "";
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Center(child: const Text("Ask for request")),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 500,
                child: TextFormField(
                  maxLines: 5,
                  controller: textFieldController,
                  decoration: InputDecoration(
                    hintText: "Type the message",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onChanged: (value) => messageTxt = value,
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel")),
          TextButton(
              onPressed: () {
                textFieldController.clear();
                if (messageTxt != "") {
                  String id = DateTime.now().microsecondsSinceEpoch.toString();
                  _firestore.collection('helprequest').doc('$id').set({
                    "text": messageTxt,
                    "sender": "${_auth.currentUser!.email}",
                    "location": CurrAdd
                  });
                }
              },
              child: Text("Send")),
        ],
      );
    },
  );
}
