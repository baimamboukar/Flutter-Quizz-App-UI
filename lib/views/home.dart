import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:knowledgifier/views/views.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void switchTab(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [Dashboard(), Container(), Container(), Profile()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 10.0,
        showSelectedLabels: true,
        onTap: (index) => switchTab(index),
        elevation: 0.0,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(LineIcons.dotCircleAlt), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.brain,
              ),
              label: "Challenges"),
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.lightningBolt,
              ),
              label: "Respond"),
          BottomNavigationBarItem(
              icon: Icon(LineIcons.userCircle), label: "Profile"),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      // floatingActionButton: AvatarGlow(
      //   endRadius: 12.0,
      //   glowColor: Colors.amber[200],
      //   child: FloatingActionButton(
      //     backgroundColor: Colors.red,
      //     mini: true,
      //     onPressed: null,
      //     child: Icon(LineIcons.plusCircle),
      //   ),
      // ),
    );
  }
}
