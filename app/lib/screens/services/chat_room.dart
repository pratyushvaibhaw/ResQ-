import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Chatroom extends StatefulWidget {
  @override
  State<Chatroom> createState() => _ChatroomState();
}

class _ChatroomState extends State<Chatroom> {
  final TextEditingController _message = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  void onSendmessage() async {
    if (_message.text.isNotEmpty) {
      Map<String, dynamic> messages = {
        "sender": "${_auth.currentUser!.email}",
        "message": _message.text,
        "time": FieldValue.serverTimestamp(),
      };

      _message.clear();
      await _firestore
          .collection('chatroom')
          .doc('1234567')
          .collection('chats')
          .add(messages);
    } else {
      print("Enter text");
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "name",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              height: size.height / 1.25,
              width: size.width,
              child: StreamBuilder(
                  stream: _firestore
                      .collection('chatroom')
                      .doc('1234567')
                      .collection('chats')
                      .orderBy('time', descending: false)
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          var message = snapshot.data!.docs;

                          return messages(size, message, index);
                        },
                        itemCount: snapshot.data!.docs.length,
                      );
                    } else {
                      return Text("nd");
                    }
                  })),
          Container(
            height: size.height / 12,
            width: size.width,
            alignment: Alignment.center,
            child: Container(
              height: size.height / 12,
              width: size.width / 1.1,
              child: Row(
                children: [
                  Container(
                    height: size.height / 12,
                    width: size.width / 1.5,
                    child: TextField(
                      controller: _message,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        onSendmessage();
                      },
                      icon: Icon(Icons.send_rounded))
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

Widget messages(Size size, var message, int index) {
  return Container(
    width: size.width,
    alignment: message[index]['sender'] == 'anshu@gmail.com'
        ? Alignment.centerRight
        : Alignment.centerLeft,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10)),
          color: Colors.grey),
      child: Text(
        message[index]['message'],
        style: TextStyle(color: Colors.white, fontSize: 21),
      ),
    ),
  );
}
