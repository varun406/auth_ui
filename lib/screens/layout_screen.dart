import 'package:auth_ui/screens/about_us_screen.dart';
import 'package:auth_ui/screens/bookmark_screen.dart';
import 'package:auth_ui/screens/course_enroll_screen.dart';
import 'package:auth_ui/screens/home_screen.dart';
import 'package:auth_ui/screens/live_classes_screen.dart';
import 'package:auth_ui/screens/my_profile_screen.dart';
import 'package:auth_ui/screens/mycourses_screen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _list = <Widget>[
    const HomeScreen(),
    const MyCourses(),
    const CourseEnrollScreen(),
    const Bookmark(),
    const MyProfile(),
    const AboutUs()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green[900],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Courses"),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv_outlined), label: "Live Classes"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: "Bookmark"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "My Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: "About Us"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[500],
        unselectedItemColor: Colors.green[300],
        selectedLabelStyle:
            const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: _list.elementAt(_selectedIndex),
      ),
    );
  }
}
