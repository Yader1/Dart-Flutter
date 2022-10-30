import 'package:flutter/material.dart';
import 'package:platzi_course_application/widget/HomeTrips.dart';
import 'package:platzi_course_application/widget/PersonTrips.dart';

import 'SearchTrips.dart';

class MenuTrips extends StatefulWidget {
  const MenuTrips({super.key});

  @override
  State<MenuTrips> createState() => _MenuTripsState();
}

class _MenuTripsState extends State<MenuTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    PersonTrips()
  ];
  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        primaryColor: Colors.purple.shade700
      ), child: BottomNavigationBar(
        currentIndex: indexTap,
        onTap: onTapTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: ""),
        ]
      ),
      ),
    );
  }
}