import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:resq/main.dart';
import 'package:resq/screens/ui/agency/widgets/agency_drawer.dart';
import 'package:resq/screens/ui/agency/widgets/agency_appbar.dart';
import 'package:resq/screens/ui/agency/widgets/dashboard/lower_dashboard.dart';
import 'package:resq/screens/ui/agency/widgets/dashboard/upper_dashboard.dart';
import 'package:resq/utils/utils.dart';

class HomeAgency extends StatefulWidget {
  const HomeAgency({super.key});

  @override
  State<HomeAgency> createState() => _HomeAgencyState();
}

class _HomeAgencyState extends State<HomeAgency> {
  String currentAddress = '';
  Position? currentPosition;

  TextStyle textStyle1 =
      TextStyle(fontWeight: FontWeight.w300, color: Colors.white);
  Future<Position> checkPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled)
      Utils().toastMessage('Please turn on your location');
    else {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        Utils().toastMessage('Give location access');
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.deniedForever)
        Utils().toastMessage('Permission denied forever');
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation);
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place0 = placemarks[0];
      String? city = (placemarks[0].locality != placemarks[1].locality)
          ? placemarks[1].locality
          : (placemarks[0].locality != placemarks[2].locality)
              ? placemarks[2].locality
              : placemarks[3].locality;

      for (int i = 0; i < 5; i++) {
        debugPrint('at ${i}\n');
        debugPrint(placemarks[i].toString());
      }
      setState(() {
        currentPosition = position;
        currentAddress = '${place0.name} ' +
            '${place0.locality} ' +
            '${city} '
                '${place0.administrativeArea} - ' +
            '${place0.postalCode}' +
            '';
      });
    } catch (e) {
      Utils().toastMessage(e.toString());
    }

    return position;
  }

  @override
  void initState() {
    super.initState();
    checkPosition();
  }

  @override
  Widget build(BuildContext context) {
    double totalheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(totalheight * .12, currentAddress),
      drawer: Container(
        child: drawer(context),
        margin: EdgeInsets.only(left: 10, bottom: 30, top: totalheight * .18),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            upperdashboard(context, currentAddress),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.touch_app_rounded,
                  size: 40,
                ),
                Text(
                  'Tap on services and ask to collab',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: ScrollConfiguration(
                  // used to remove the overscroll glow
                  child: lowerdashboard(),
                  behavior: ScrollBehavior().copyWith(overscroll: false),
                ),
                height: 350),
          ],
        ),
      ),
    );
  }
  
}
