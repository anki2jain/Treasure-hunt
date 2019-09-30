import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:treasurehunt/rules.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentPage = 0;
  Color backcolor = Color(0xFF000020);
  Color color1 = Color(0xFFD4AF37);
   Color color = Color(0xFFFFDF00);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: color1,
        textColor: color,
        inactiveIconColor: color1,
        barBackgroundColor: backcolor,
        tabs: [
          TabData(iconData: Icons.help_outline, title: "Help"),
          TabData(iconData: Icons.games, title: "Treasure"),
          TabData(iconData: Icons.map, title: "Map")
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(child: Rules()),
      ),
    );
  }
}
