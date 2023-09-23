import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetAlert extends StatefulWidget {
  const GetAlert(BuildContext context, {super.key});

  @override
  State<GetAlert> createState() => _GetAlertState();
}

class _GetAlertState extends State<GetAlert> {
  final _fireStore = FirebaseFirestore.instance;
  List<String> data = [];
  late String d;
  int i = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(minutes: 3), (timer) {
      if (!data.isEmpty) delete(data[i]);
      i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            " Alert Notification",
            style: TextStyle(color: Colors.white),
          )),
      body: Container(
        child: StreamBuilder(
            stream: _fireStore.collection("messages").snapshots(),
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
                            children: [
                              Text(
                                message[index]['sender'],
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              Text(
                                message[index]['text'],
                                style: TextStyle(
                                    fontSize: 21, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
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
