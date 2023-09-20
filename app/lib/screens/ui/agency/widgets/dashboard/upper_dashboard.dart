import 'package:flutter/material.dart';

Container upperdashboard(BuildContext context, String currentAddress) {
  return Container(
    margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(color: Colors.black38, offset: Offset(1, 1), blurRadius: 20),
        BoxShadow(
            color: Colors.black38, offset: Offset(-1, -1), blurRadius: 20),
      ],
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    height: 205,
    width: MediaQuery.of(context).size.width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              size: 40,
              color: Colors.black,
            ),
            Expanded(
                child: currentAddress.isEmpty
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularProgressIndicator(
                            color: Colors.black,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'fetching location',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    : Text(
                        currentAddress,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      size: 45,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Send Alerts',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
                margin: EdgeInsets.only(right: 15),
                height: 100,
                width: 155,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.messenger_outline_outlined,
                          size: 35,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Text(
                      'Help Requests',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
                height: 100,
                width: 155,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
