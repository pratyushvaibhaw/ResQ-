import 'package:flutter/material.dart';
import 'package:resq/screens/ui/citizens/home_screen_ctz.dart';

GridView lowerdashboard() {
  return GridView.builder(
    padding: EdgeInsets.all(5),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 4 / 2.5),
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
          return HomeCitizen();
        })),
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

List<Map<String, dynamic>> services = [
  {'expertise': 'FIRE  SERVICES', 'icon': Icons.fire_extinguisher_rounded},
  {'expertise': 'MEDICAL  SERVICES', 'icon': Icons.local_hospital_outlined},
  {'expertise': 'TRANSPORTS', 'icon': Icons.fire_truck_rounded},
  {'expertise': 'POLICE', 'icon': Icons.local_police_outlined},
  {'expertise': 'NDRF', 'icon': Icons.person_2_rounded},
  {'expertise': 'SDRF', 'icon': Icons.person_2_rounded},
  {'expertise': 'LOCAL NGO', 'icon': Icons.group},
  
];
