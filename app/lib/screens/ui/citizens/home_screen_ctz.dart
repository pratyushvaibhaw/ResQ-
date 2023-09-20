import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:resq/data/data.dart';
import 'package:resq/screens/auth/agency/login_screen.dart';
import 'package:resq/screens/ui/citizens/widgets/user_drawer.dart';

class HomeCitizen extends StatefulWidget {
  const HomeCitizen({super.key});

  @override
  State<HomeCitizen> createState() => _HomeCitizenState();
}

class _HomeCitizenState extends State<HomeCitizen> {
  TextStyle _textStyle1 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black);
  TextStyle _textStyle2 =
      TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        padding: EdgeInsets.only(top: 35),
        child: UserDrawer(),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 1,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'R  e  s  Q+',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w200),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                        color: Colors.amber,
                        child: Text("anshu"),
                      );
                    },
                  );
                },
                icon: Icon(
                  Icons.notifications_active_rounded,
                  color: Colors.white,
                  size: 25,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 2,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.black),
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      scroll_view("assets/images/earthQuake.jpg"),
                      scroll_view("assets/images/flood.jpeg"),
                      scroll_view("assets/images/fire_tips.jpg"),
                      scroll_view("assets/images/landslide.jpg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: Colors.black))),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () async {
                    await FlutterPhoneDirectCaller.callNumber("112");
                  },
                  child: Text(
                    'S  O  S',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Prepare, protect, and stay safe know more below',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: ListTile(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Data.fireTips();
                                });
                          },
                          contentPadding: EdgeInsets.all(10),
                          leading: Icon(
                            Icons.fire_truck_outlined,
                            size: 40,
                            color: Colors.black,
                          ),
                          title: Center(
                              child: Text(
                            "F I R E ",
                            style: _textStyle1,
                          )),
                          subtitle: Center(
                            child: Text(
                              "P E V E N T I O N    T I P S",
                              style: _textStyle2,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_drop_down,
                            size: 40,
                            color: Colors.black,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: ListTile(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Data.floodTips();
                                });
                          },
                          contentPadding: EdgeInsets.all(10),
                          leading: Icon(
                            Icons.flood,
                            size: 40,
                            color: Colors.black,
                          ),
                          title: Center(
                              child: Text(
                            "F L O O D ",
                            style: _textStyle1,
                          )),
                          subtitle: Center(
                              child: Text(
                            "P E V E N T I O N    T I P S",
                            style: _textStyle2,
                          )),
                          trailing: Icon(
                            Icons.arrow_drop_down,
                            size: 40,
                            color: Colors.black,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: ListTile(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Data.LandSlideTips();
                              });
                        },
                        contentPadding: EdgeInsets.all(10),
                        leading: Icon(
                          Icons.landslide,
                          size: 40,
                          color: Colors.black,
                        ),
                        title: Center(
                            child: Text(
                          "L A N D S L I D E ",
                          style: _textStyle1,
                        )),
                        subtitle: Center(
                            child: Text(
                          "P E V E N T I O N    T I P S",
                          style: _textStyle2,
                        )),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: ListTile(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Data.CycloneTips();
                              });
                        },
                        contentPadding: EdgeInsets.all(10),
                        leading: Icon(
                          Icons.cyclone,
                          size: 40,
                          color: Colors.black,
                        ),
                        title: Center(
                            child: Text(
                          "C Y C L O N E ",
                          style: _textStyle1,
                        )),
                        subtitle: Center(
                            child: Text(
                          "P E V E N T I O N    T I P S",
                          style: _textStyle2,
                        )),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: ListTile(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Data.EarthQuakeTips();
                              });
                        },
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          radius: 18,
                          backgroundImage: NetworkImage(
                              'https://png.pngitem.com/pimgs/s/628-6284613_this-icon-represents-an-earthquake-earthquakes-png-transparent.png'),
                        ),
                        title: Center(
                            child: Text(
                          "E A R T H Q U A K E ",
                          style: _textStyle1,
                        )),
                        subtitle: Center(
                            child: Text(
                          "P E V E N T I O N    T I P S",
                          style: _textStyle2,
                        )),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: ListTile(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Data.DroughtTips();
                              });
                        },
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          radius: 18,
                          backgroundImage: NetworkImage(
                              'https://www.vhv.rs/dpng/d/334-3344604_drought-disaster-sun-drought-clipart-black-and-white.png'),
                        ),
                        title: Center(
                            child: Text(
                          "D R O U G H T ",
                          style: _textStyle1,
                        )),
                        subtitle: Center(
                            child: Text(
                          "P E V E N T I O N    T I P S",
                          style: _textStyle2,
                        )),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container scroll_view(String src) {
    return Container(
      padding: EdgeInsets.only(right: 1),
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: InteractiveViewer(
          panAxis: PanAxis.free,
          panEnabled: true,
          scaleEnabled: true,
          minScale: 1,
          maxScale: 3,
          child: Image.asset(src, fit: BoxFit.fill)),
    );
  }
}
