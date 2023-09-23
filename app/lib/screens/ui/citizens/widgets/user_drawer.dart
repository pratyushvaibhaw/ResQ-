import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:resq/screens/auth/agency/login_screen.dart';

class UserDrawer extends StatefulWidget {
  const UserDrawer({super.key});

  @override
  State<UserDrawer> createState() => _UserDrawerState();
}

class _UserDrawerState extends State<UserDrawer> {
  var _auth = FirebaseAuth.instance;
  TextStyle _textStyle1 = TextStyle(fontSize: 15, fontWeight: FontWeight.w300);
  @override
  Widget build(BuildContext context) {
    var list = _auth.currentUser!.providerData[0];
    debugPrint(list.toString());
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor:
                    list.photoURL != null ? Colors.white : Colors.grey,
                child: Center(
                  child: list.photoURL != null
                      ? Image.network(
                          list.photoURL!,
                          height: 40,
                        )
                      : Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.black,
                        ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    list.email != null ? list.email! : list.phoneNumber!,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300)),
                child: ListTile(
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 300,
                          width: 300,
                          color: Colors.deepOrangeAccent,
                          child: Text(
                            "anshu",
                            style: _textStyle1,
                          ),
                        );
                      },
                    );
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Image.asset(
                      "assets/images/chatbot.jpg",
                      height: 22,
                    ),
                  ),
                  title: Text(
                    "Chat Bot",
                    style: _textStyle1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300)),
                child: ListTile(
                  onTap: () async {
                    await FlutterPhoneDirectCaller.callNumber("100");
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Image.asset(
                      "assets/images/police.jpg",
                      height: 26,
                    ),
                  ),
                  title: Text(
                    "Police",
                    style: _textStyle1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300)),
                child: ListTile(
                  onTap: () async {
                    await FlutterPhoneDirectCaller.callNumber("108");
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Image.asset(
                      "assets/images/ambulance.jpg",
                      height: 21.4,
                    ),
                  ),
                  title: Text(
                    "Ambulance",
                    style: _textStyle1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300)),
                child: ListTile(
                  onTap: () async {
                    await FlutterPhoneDirectCaller.callNumber("101");
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Image.asset(
                      "assets/images/fire_bigrade.png",
                      height: 24,
                    ),
                  ),
                  title: Text(
                    "Fire brigade",
                    style: _textStyle1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300)),
                child: ListTile(
                  onTap: () async {
                    await FlutterPhoneDirectCaller.callNumber("108");
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Image.asset(
                      "assets/images/disater_mangement.jpg",
                      height: 24,
                    ),
                  ),
                  title: Text(
                    "Disater Management Services",
                    style: _textStyle1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300)),
                child: ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Icon(
                      Icons.contact_support,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  title: Text(
                    "Contact us",
                    style: _textStyle1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300)),
                child: ListTile(
                  onTap: () async {
                    if (list.providerId == 'google.com') {
                      await GoogleSignIn().signOut();
                      debugPrint('signing out');
                    } else
                      _auth.signOut();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout_rounded,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Log out",
                          style: _textStyle1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
