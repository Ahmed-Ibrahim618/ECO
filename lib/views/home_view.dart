import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/home_page.dart';
import 'package:flutter_application_4/views/my_car_page.dart';
import 'package:flutter_application_4/views/my_profile_page.dart';
import 'package:flutter_application_4/views/my_request_page.dart';
import 'package:flutter_application_4/widget/custom_bottom_navigation_bar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  List<Widget> widgetpage = [
    HomePage(),
    MyRequestPage(),
    MyCarPage(),
    MyProfilePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetpage.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
