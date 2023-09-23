import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:resq/screens/ui/agency/home_agency.dart';
import 'package:resq/screens/ui/citizens/home_screen_ctz.dart';
import 'package:resq/screens/ui/splash_screen.dart';

void main() async {
  // firebase services are initialized in the main
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: SplashScreen(),
      // //first navigation to splashScreen
      //home: HomeCitizen(),
      //home: HomeAgency(),
    );
  }
}
