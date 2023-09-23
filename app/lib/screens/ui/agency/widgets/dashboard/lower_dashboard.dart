import 'package:flutter/material.dart';
import 'package:resq/screens/services/fire_services.dart';
import 'package:resq/screens/services/local_police.dart';
import 'package:resq/screens/services/local_services.dart';
import 'package:resq/screens/services/medical_services.dart';
import 'package:resq/screens/services/ndrf_team.dart';
import 'package:resq/screens/services/sdrf_team.dart';
import 'package:resq/screens/services/transport_services.dart';

GridView lowerdashboard() {
  List<Map<String, dynamic>> services = [
    {
      'expertise': 'FIRE  SERVICES',
      'icon': Icons.fire_extinguisher_rounded,
    },
    {
      'expertise': 'MEDICAL  SERVICES',
      'icon': Icons.local_hospital_outlined,
    },
    {
      'expertise': 'TRANSPORTS',
      'icon': Icons.fire_truck_rounded,
    },
    {
      'expertise': 'POLICE',
      'icon': Icons.local_police_outlined,
    },
    {
      'expertise': 'NDRF',
      'icon': Icons.person_2_rounded,
    },
    {
      'expertise': 'SDRF',
      'icon': Icons.person_2_rounded,
    },
    {
      'expertise': 'LOCAL  BODIES',
      'icon': Icons.group,
    },
  ];

  return GridView.builder(
    padding: EdgeInsets.all(5),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 4 / 2.5),
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FireServices()));
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MedicalServices()));
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TransportServices()));
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LocalPolice()));
            case 4:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NdrfTeam()));
            case 5:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SdrfTeam()));
            case 6:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LocalServices()));
          }
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black87, width: .5),
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
          // child: Center(child: Text(index.toString())),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                services[index]['expertise'],
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
              ),
              Icon(
                services[index]['icon'],
                size: 40,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      );
    },
    itemCount: services.length,
  );
}
