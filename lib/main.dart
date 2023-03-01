import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelui/app_style.dart';
import 'package:travelui/detailScreen.dart';
import 'package:travelui/homeScreen.dart';

void main(List<String> args) {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: const NewsDetailsScreen(),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kWhite,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/home_selected_icon.svg')
                  : SvgPicture.asset('assets/home_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
                  : SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/notification_selected_icon.svg')
                  : SvgPicture.asset('assets/notification_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SvgPicture.asset('assets/profile_selected_icon.svg')
                  : SvgPicture.asset('assets/profile_unselected_icon.svg'),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
