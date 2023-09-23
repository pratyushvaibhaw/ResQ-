import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class TransportServices extends StatefulWidget {
  const TransportServices({super.key});

  @override
  State<TransportServices> createState() => _TransportServicesState();
}

class _TransportServicesState extends State<TransportServices> {
  final auth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;
  bool sortVehicle = false;
  bool sortStaff = false;

  TextStyle _textStyle = TextStyle(fontSize: 12, color: Colors.black);

  // Callback function to update sorting flags
  void updateSortFlags(bool sortByVehicle, bool sortByManpower) {
    setState(() {
      sortVehicle = sortByVehicle;
      sortStaff = sortByManpower;
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
          'Heavy Transporters',
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
                          .collection('transport_services')
                          .orderBy('vehicles', descending: false)
                          .snapshots()
                      : (sortStaff)
                          ? fireStore
                              .collection('transport_services')
                              .orderBy('manpower', descending: false)
                              .snapshots()
                          : fireStore
                              .collection('transport_services')
                              .snapshots(),
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
                                      'Address : ' + dataSet['address'],
                                      style: _textStyle,
                                    ),
                                    Text(
                                      "Manpower : " +
                                          dataSet['manpower'].toString(),
                                      style: _textStyle.copyWith(
                                          backgroundColor: (sortStaff)
                                              ? Colors.red.shade100
                                              : null),
                                    ),
                                    Text(
                                        'Vehicles : ' +
                                            dataSet['vehicles'].toString(),
                                        style: _textStyle.copyWith(
                                            backgroundColor: (sortVehicle)
                                                ? Colors.amber.shade100
                                                : null)),
                                    Text(
                                      'Vehicle Type : ' +
                                          dataSet['vehicle_type'],
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
