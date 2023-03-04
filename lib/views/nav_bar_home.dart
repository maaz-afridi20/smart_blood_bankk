import 'package:flutter/material.dart';
import 'package:smart_blood_bank/views/profile.dart';
import 'package:smart_blood_bank/views/volunteer_page.dart';

import '../consts/colors.dart';
import '../main_home_page.dart';
import 'blood_bank_page.dart';

class NavBarHome extends StatefulWidget {
  const NavBarHome({super.key});

  @override
  State<NavBarHome> createState() => _NavBarHomeState();
}

class _NavBarHomeState extends State<NavBarHome> {
  int myCurrentIndex = 1;
  int pageIndex = 0;

  final List pages = [
    const VolunteerPage(),
    const MainHomePage(),
    const BloodBanks(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: whitecolor,
        selectedItemColor: redcolor,
        unselectedItemColor: lightgrey,
        currentIndex: myCurrentIndex,
        iconSize: 30,
        onTap: (value) {
          setState(() {
            myCurrentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.volunteer_activism,
            ),
            label: 'Volunteer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.balance_outlined),
            label: 'Blood Bank',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[myCurrentIndex],
    );
  }
}
