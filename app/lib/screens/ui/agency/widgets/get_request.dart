import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class GetRequest extends StatefulWidget {
  const GetRequest(BuildContext context, {super.key});

  @override
  State<GetRequest> createState() => _GetRequestState();
}

class _GetRequestState extends State<GetRequest> {
  final _fireStore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  List<String> data = [];
  late String d;
  int i = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(minutes: 50), (timer) {
      if (!data.isEmpty) delete(data[i]);
      i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "latest help request",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
          )),
      body: Container(
        child: StreamBuilder(
            stream: _fireStore.collection("helprequest").snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError)
                return Text('Has errror');
              else {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    d = snapshot.data!.docs[index].id;
                    data.add(d);
                    var message = snapshot.data!.docs;
                    if (message[index]['sender'] != auth.currentUser!.email) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey,
                                    offset: Offset(5, 5))
                              ],
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "sent by : " +
                                      message[index]['sender'] +
                                      "\n" +
                                      "from : " +
                                      message[index]['location'],
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black45),
                                ),
                                Text(
                                  message[index]['text'],
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  },
                  itemCount: snapshot.data!.docs.length,
                );
              }
            }),
      ),
    );
  }

  delete(String id) async {
    CollectionReference collection = _fireStore.collection('messages');

    DocumentReference document = collection.doc(id);

    try {
      await document.delete();
    } catch (e) {
      print("error deleting account");
    }
  }
}
