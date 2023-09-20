import 'package:flutter/material.dart';

class Data {
  TextStyle _textHeader = TextStyle(
      color: Colors.black,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w700,
      fontSize: 30);
  TextStyle _textSentence = TextStyle(
      color: Colors.grey.shade800,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      fontSize: 14);
  TextStyle _textPoint = TextStyle(
      color: Colors.black,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w600,
      fontSize: 18);
  size() {
    return SizedBox(
      height: 10,
    );
  }

  static fireTips() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.done_outline_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Do's",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Call 101",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Always call emergency services as soon as possible if there's a fire, even if you think you can handle it with an extinguisher.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Install Smoke Alarms",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Install smoke alarms on every level of your home, inside each bedroom, and outside sleeping areas. Test them regularly and replace the batteries at least once a year.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Have Extinguishers ",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Keep a fire extinguisher in your kitchen and know how to use it. Different types of fires may require different extinguishers.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Stay Low",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If there's smoke in the building, crawl low to avoid inhaling smoke. Smoke rises, and cleaner air is near the floor.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Stop, Drop, and Roll",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If your clothes catch fire, stop, drop to the ground, cover your face with your hands, and roll to smother the flames.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Close Doors",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "When escaping a fire, close doors behind you to slow the spread of flames and smoke.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Stay out",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Once you've escaped a burning building, do not re-enter it for any reason. Let firefighters handle the situation.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Cook Safely",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Never leave cooking unattended, especially when using the stove or oven. Keep flammable items away from the cooking area.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Keep Lighters Away",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Store matches and lighters out of reach of children, and teach them that these are not toys.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.block,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Don'ts",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Overload",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Avoid overloading electrical outlets or using damaged electrical cords. Replace damaged cords immediately.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Smoke",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If you smoke, do it outside and use a proper receptacle for disposing of cigarette butts. Never smoke in bed.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Neglect Heaters",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Keep space heaters away from flammable materials, and turn them off when you leave the room or go to sleep.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Block",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Keep hallways and exit doors clear of obstructions to ensure a clear path to safety.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Hide",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If you discover a fire, don't delay in reporting it or trying to put it out yourself if it's beyond your control. Leave and call for help immediately.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Panic",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "In case of a fire, try to stay as calm as possible. Panic can impede your ability to think clearly and act safely.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Use",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Never use elevators during a fire. They could become inoperable or take you to a dangerous floor.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Ignore",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Address potential fire hazards in your home, such as faulty wiring, gas leaks, or malfunctioning appliances, promptly.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static floodTips() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.done_outline_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Do's",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Stay Informed",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Monitor weather forecasts and stay updated on flood alerts and warnings in your area. Use weather apps or a NOAA Weather Radio.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Have an Emergency Kit",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Prepare an emergency kit that includes non-perishable food, water, medications, a flashlight, batteries, a first-aid kit, important documents, and clothing.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Family Emergency Plan",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Develop a flood-specific emergency plan with your family. Include evacuation routes and meeting points.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Elevate Utilities",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Elevate electrical panels, heating systems, and appliances in your home to reduce the risk of water damage during a flood.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Move to Higher Ground",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If authorities advise evacuation, move to higher ground immediately. Follow evacuation orders without hesitation.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Stay Away",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Never walk, swim, or drive through floodwaters. Just six inches of fast-moving water can knock you off your feet, and two feet can carry away most vehicles.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Use Sandbags",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If available, use sandbags to divert floodwater away from your home or to create a barrier around vulnerable areas.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Stay on Roofs",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If you're trapped in a building during a flood, move to the highest point, such as the roof. Signal for help by using a flashlight or waving an item of clothing.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Listen to Authorities",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Follow the instructions of emergency personnel, first responders, and local authorities during a flood.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.block,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Don'ts",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Ignore Orders",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If authorities issue an evacuation order, do not ignore it. Evacuate immediately to avoid risking your life and the lives of others.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Drive",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Avoid driving through flooded roads or around barricades. Turn around and find an alternative route.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Walk",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "As mentioned earlier, even shallow floodwaters can be dangerous. Avoid walking through them.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Stay",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Avoid staying in basements during flooding. Water can rise quickly and trap you.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Touch",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Never touch electrical equipment if you are wet or standing in water. This can lead to electrocution.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Use Flames",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Avoid using open flames (candles, matches) during a flood, as they can lead to fires and explosions.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Wait",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Do not wait until the last minute to prepare for a flood. Take proactive measures to secure your property and family's safety.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Depend",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "While emergency services are essential, it's also your responsibility to take necessary precautions and be prepared for floods.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static LandSlideTips() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.done_outline_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Do's",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Stay Informed",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Pay attention to weather forecasts and landslide warnings in your area. Be aware of any geological hazards that may affect your region.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Monitor Your Surroundings",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Keep an eye out for signs of potential landslides, such as cracks in the ground, tilting trees, or sudden changes in water flow in nearby streams or rivers.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Create an Emergency Plan",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Develop a family emergency plan that includes evacuation routes and meeting points. Ensure all family members know what to do in case of a landslide.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Pack an Emergency Kit",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Prepare an emergency kit with essential supplies, including water, non-perishable food, flashlights, batteries, a first-aid kit, and important documents.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Stay on Higher Ground",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If you suspect a landslide is imminent or if you receive an evacuation order, move to higher ground immediately. Avoid valleys, riverbanks, and low-lying areas.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Contact Local Authorities",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If you notice any signs of an impending landslide or if you are in an area prone to landslides, contact local authorities to report your observations and ask for guidance.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Be Cautious",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If you're driving and encounter heavy rain or signs of a landslide, slow down, and be prepared to stop or turn around. Avoid driving through areas prone to landslides.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Protect Your Property",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If you're in a landslide-prone area, take measures to protect your property, such as building retaining walls and diverting water away from slopes.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.block,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Don'ts",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Ignore",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If you notice signs of a landslide, such as ground movement or unusual noises, do not ignore them. Take immediate action to protect yourself and your family.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Build",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Avoid building or residing in areas with steep slopes or unstable soil, as these are more susceptible to landslides.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Wait",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If authorities issue an evacuation order or if you suspect a landslide is imminent, do not wait. Evacuate immediately to a safe location.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Walk",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Avoid walking on slopes or hillsides during heavy rainfall or immediately after heavy rains. The ground is more likely to become unstable during such conditions.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Assume",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Landslides can occur in various regions and under different conditions. Do not assume that your area is immune to landslides.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Rely",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "While emergency services are vital, it's your responsibility to be prepared and take necessary precautions to safeguard your family and property.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static CycloneTips() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.done_outline_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Do's",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Stay Informed",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Monitor weather forecasts and stay updated on flood alerts and warnings in your area. Use weather apps or a NOAA Weather Radio.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Have an Emergency Kit",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Assemble an emergency kit with essential supplies, including non-perishable food, water, a flashlight, batteries, a first-aid kit, important documents, and medications.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Secure Your Home",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Reinforce your home by boarding up windows, securing doors, and securing loose objects in your yard. Consider hurricane shutters for added protection.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Evacuate If Necessary",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If local authorities issue an evacuation order, follow it promptly. Evacuate to a safe location, such as a designated shelter or a friend's or family member's home outside the affected area.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Stay Indoors",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Seek shelter indoors well before the cyclone's arrival. Stay away from windows and glass doors to avoid flying debris. Use a small, windowless room on the lowest level of your home as a safe area.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Listen to Authorities",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Follow the instructions and advice of local emergency management agencies, first responders, and law enforcement.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Charge Electronics",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Ensure that your cell phone and other essential electronic devices are fully charged before the cyclone hits. Consider investing in a portable power bank.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.block,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Don'ts",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Ignore",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If authorities issue an evacuation order, do not stay behind or delay your departure. Evacuate immediately to ensure your safety.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Go Outside",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Avoid going outside during the cyclone, even if the weather appears to briefly calm down. Dangerous conditions can return suddenly.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Use Candles",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Avoid using open flames, such as candles, during the storm. Use battery-powered flashlights or lanterns instead to reduce the risk of fires.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Use Generators",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Do not operate generators inside your home or in enclosed spaces. Carbon monoxide poisoning is a serious risk.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Drive",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Stay off the roads during the cyclone unless it's absolutely necessary. High winds and flooding can make driving extremely dangerous.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Assume",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Even if you've experienced cyclones before, do not assume that the current one will be the same. Each cyclone is unique and can bring varying levels of destruction.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't rely",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "While emergency services are crucial, it's also your responsibility to be prepared and take necessary precautions to protect yourself and your family.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static EarthQuakeTips() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.done_outline_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Do's",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Drop, Cover, and Hold On",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If you are indoors during an earthquake, drop to the ground, take cover under a sturdy piece of furniture (like a table or desk), and hold on until the shaking stops. This protects you from falling objects.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Stay Indoors",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If you are indoors during an earthquake, stay inside. Most injuries occur when people try to run outside during the shaking.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Stay Away",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Move away from windows, glass doors, and other items that could shatter during the quake",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Stay Put",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If you are in bed, stay there and cover your head with a pillow. Do not try to get out of bed during the shaking.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Move to an Open Area",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If you are outside, move away from buildings, streetlights, and utility wires. Find an open area and drop to the ground.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Pull Over Safely",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If you are driving, pull over to a safe area away from buildings, trees, overpasses, and power lines. Stay inside the vehicle until the shaking stops.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Be Cautious",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "After the shaking stops, be aware of aftershocks, which can follow the main quake. Be prepared to drop, cover, and hold on again if necessary.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Check for Injuries",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If you are safe and uninjured after the shaking stops, check on others and administer first aid if needed.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Listen to Information",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Tune in to a battery-powered or hand-crank emergency radio for updates and instructions from local authorities.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.block,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Don'ts",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Run Outside",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "As mentioned, running outside during an earthquake can be dangerous due to falling debris. Stay indoors and take cover.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Use Elevators",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Avoid using elevators during an earthquake, as they may become stuck or malfunction.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Light Matches",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Do not use open flames, such as matches or candles, as gas leaks or other hazards may be present.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Stand in Doorways",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Contrary to popular belief, standing in a doorway is not recommended. It's safer to drop, cover, and hold on.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Drive ",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "If you are in a vehicle, pull over safely and stay inside. Do not try to drive during the shaking.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Panic",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Try to remain calm and focused. Panic can lead to poor decision-making.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Spread Rumors",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Share accurate information and avoid spreading rumors or false information during and after the earthquake.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Use the Phone",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Keep phone lines clear for emergency calls. Use text messages or social media to communicate with loved ones if necessary.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static DroughtTips() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.done_outline_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Do's",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Conserve Water",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Practice water conservation by fixing leaks, using low-flow fixtures, and being mindful of your water use at home.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Use Water-Efficiently",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Invest in water-efficient appliances like washing machines and dishwashers that use less water per cycle.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Collect Rainwater",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "If allowed in your area, collect rainwater in barrels or containers for non-potable uses like watering plants or flushing toilets.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Water Plants Wisely",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Water your garden and plants during the cooler parts of the day to minimize evaporation. Use soaker hoses or drip irrigation to deliver water directly to the roots.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Limit Outdoor Watering",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Follow local watering restrictions and limit outdoor watering to essential needs. Consider using drought-resistant plants in your landscaping.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Limit Car Washing",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Reduce car washing to a minimum, and use a bucket and sponge instead of a hose when washing your car.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Limit Lawn Maintenance",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Allow your lawn to go dormant during the drought, and avoid excessive mowing, which can stress the grass.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Store Water",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Store a supply of clean drinking water in case the drought affects your water supply.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Plan for Food Security",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Stock up on non-perishable foods in case drought conditions impact food production and availability.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Educate Yourself",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Stay informed about the drought situation in your area through local authorities and weather agencies.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.block,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Don'ts",
                    style: Data()._textHeader,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Waste Water",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Avoid unnecessary water use, such as leaving the tap running while brushing your teeth or taking long showers.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Overwater",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Avoid overwatering lawns and gardens, as excess water can lead to soil erosion and waste.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Ignore Leaks",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Promptly repair any water leaks in your home to prevent water wastage.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Fill",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Refrain from filling swimming pools during a drought, and consider using a pool cover to reduce evaporation.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Ignore",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Follow any water use restrictions or guidelines implemented by your local authorities.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Dispose",
                      style: Data()._textPoint,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Avoid disposing of hazardous materials in a way that can contaminate water sources.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Ignore Fire",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Be vigilant about fire safety during a drought, as dry conditions increase the risk of wildfires.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Panic",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Stay calm and take proactive steps to conserve water and prepare for the impact of the drought.",
                      style: Data()._textSentence,
                    ),
                    Data().size(),
                    Text(
                      "Don't Waste Food",
                      style: Data()._textPoint,
                    ),
                    Data().size(),
                    Text(
                      "Be mindful of food waste during a drought, as water scarcity can affect food production.",
                      style: Data()._textSentence,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
