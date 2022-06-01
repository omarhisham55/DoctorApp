import 'package:doctor/Notifications.dart';
import 'package:doctor/Profile.dart';
import 'package:doctor/Schedule.dart';
import 'package:doctor/home1.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  List<Widget> screens = [
    Home1(),
    Notifications(),
    Schedule(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.lightGreen,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
          },
          items:
          [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                label: 'location'
            ),
            // BottomNavigationBarItem(
            //   icon: CircleAvatar(
            //     radius: 20,
            //     backgroundColor: Colors.lightGreen,
            //     child: Icon(Icons.add,color: Colors.white,),
            //   ),
            //   label: 'Add',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_drink),
              label: 'drink',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'profile'
            ),
          ],
        )
    );
  }
}
