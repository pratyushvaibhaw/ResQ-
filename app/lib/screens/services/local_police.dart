import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class LocalPolice extends StatefulWidget {
  const LocalPolice({super.key});

  @override
  State<LocalPolice> createState() => _LocalPoliceState();
}

class _LocalPoliceState extends State<LocalPolice> {
  final auth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;

  TextStyle _textStyle = TextStyle(fontSize: 12, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Police Stations',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Container(
          height: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: StreamBuilder(
                  stream: fireStore.collection('local_police').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting)
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                      );
                    else if (snapshot.hasError)
                      return Center(
                        child: Text('Some error occurred'),
                      );
                    else {
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          var dataSet = snapshot.data!.docs[index];
                          if (auth.currentUser!.email != dataSet['email'])
                            return GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: ((context) {
                                      return AlertDialog(
                                        actionsAlignment:
                                            MainAxisAlignment.center,
                                        actions: [
                                          TextButton(
                                              onPressed: () async {
                                                await FlutterPhoneDirectCaller
                                                    .callNumber(dataSet['phone']
                                                        .toString());
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.phone,
                                                    color: Colors.lightBlue,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "Call",
                                                    style: _textStyle,
                                                  ),
                                                ],
                                              )),
                                        ],
                                      );
                                    }));
                              },
                              child: Container(
                                height: 150,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey.shade300,
                                ),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Agency name : ' + dataSet['agency_name'],
                                      style: _textStyle,
                                    ),
                                    Text(
                                      'Agency id : ' + dataSet['email'],
                                      style: _textStyle,
                                    ),
                                    Text(
                                      'Phone : ' + dataSet['phone'].toString(),
                                      style: _textStyle,
                                    ),
                                    Text(
                                      "Incharge : " +
                                          dataSet['incharge'].toString(),
                                      style: _textStyle,
                                    ),
                                    Text(
                                      'Address : ' + dataSet['address'],
                                      style: _textStyle,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          else
                            return Center(
                              child: Text(''),
                            );
                        },
                        itemCount: snapshot.data!.docs.length,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
