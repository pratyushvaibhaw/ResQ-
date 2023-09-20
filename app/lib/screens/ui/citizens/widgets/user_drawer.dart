import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:resq/screens/auth/agency/login_screen.dart';

class UserDrawer extends StatefulWidget {
  const UserDrawer({super.key});

  @override
  State<UserDrawer> createState() => _UserDrawerState();
}

class _UserDrawerState extends State<UserDrawer> {
  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle1 =
        TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "+91 345626235",
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade300)),
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
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
                  await FlutterPhoneDirectCaller.callNumber("104");
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
                  "Disater Management",
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
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
                title: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout_rounded),
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
    );
  }
}
