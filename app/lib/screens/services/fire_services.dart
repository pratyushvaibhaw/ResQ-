import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FireServices extends StatefulWidget {
  FireServices({super.key});

  @override
  State<FireServices> createState() => _FireServicesState();
}

class _FireServicesState extends State<FireServices> {
  final auth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;
  bool sortVehicle = false;
  bool sortManpower = false;

  TextStyle _textStyle = TextStyle(fontSize: 12, color: Colors.black);

  // Callback function to update sorting flags
  void updateSortFlags(bool sortByVehicle, bool sortByManpower) {
    setState(() {
      sortVehicle = sortByVehicle;
      sortManpower = sortByManpower;
    });
  }

  Future<void> showMyDialog() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          contentPadding: EdgeInsets.all(12),
          actions: [
            TextButton(
              onPressed: () {
                // Update sorting flags when 'Vehicles' is selected
                updateSortFlags(true, false);
                Navigator.pop(context);
              },
              child: Text(
                'Vehicles',
                style: _textStyle.copyWith(color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                // Update sorting flags when 'Strength' is selected
                updateSortFlags(false, true);
                Navigator.pop(context);
              },
              child: Text('Strength',
                  style: _textStyle.copyWith(color: Colors.black)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Local Bodies',
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
              TextButton(
                onPressed: () {
                  showMyDialog();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.sort_rounded,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Sort By',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    )
                  ],
                ),
              ),
              Expanded(
                child: StreamBuilder(
                  stream: (sortVehicle)
                      ? fireStore
                          .collection('fire_services')
                          .orderBy('vehicles', descending: true)
                          .snapshots()
                      : (sortManpower)
                          ? fireStore
                              .collection('fire_services')
                              .orderBy('manpower', descending: true)
                              .snapshots()
                          : fireStore.collection('fire_services').snapshots(),
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
                            return Container(
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
                                    'Operating Area : ' +
                                        dataSet['operating_area'],
                                    style: _textStyle,
                                  ),
                                  Text(
                                    "Manpower : " +
                                        dataSet['manpower'].toString(),
                                    style: _textStyle.copyWith(
                                        backgroundColor: (sortManpower)
                                            ? Colors.lightBlue.shade100
                                            : null),
                                  ),
                                  Text(
                                      'Vehicles : ' +
                                          dataSet['vehicles'].toString(),
                                      style: _textStyle.copyWith(
                                          backgroundColor: (sortVehicle)
                                              ? Colors.lightGreen.shade100
                                              : null)),
                                ],
                              ),
                            );
                          else
                            return Container(
                              height: 10,
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
