import 'package:flutter/material.dart';
import 'package:pros/View/Home/ForgetScreen/forgetscreen.dart';
import 'package:pros/View/Home/HomeScreen/homescreen.dart';
import 'package:pros/View/Home/Login/login.dart';
import 'package:pros/View/Home/Profile/profile.dart';
import 'package:pros/View/Home/Servicepage/servicepage.dart';
import 'package:pros/View/Home/Signup/signup.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List screens = [
    HomeScreen(),
    ServicePage(),
    SignupPage(),
    ProfileScreen(),
  ];
  var currentscreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentscreen],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentscreen,
          unselectedItemColor: Colors.black12,
          selectedItemColor: Color(0xff279B90),
          onTap: (value) {
            setState(() {
currentscreen=value;
            });
          },

          items: [


        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
        BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: "Alert"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person")
      ]),
    );
  }
}
