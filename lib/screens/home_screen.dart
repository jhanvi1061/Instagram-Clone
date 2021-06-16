import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

import '../screens/activity_screen.dart';
import '../screens/reels_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/search_screen.dart';
import '../screens/feed_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _pages = [
    FeedScreen(),
    SearhScreen(),
    ReelsScreen(),
    ActivityScreen(),
    ProfileScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build() - HomeScreen");
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedPageIndex == 0
                  ? "assets/home_active.svg"
                  : "assets/home.svg",
              width: 23,
            ),
            label: "Feeds",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedPageIndex == 1
                  ? "assets/search_active.svg"
                  : "assets/search.svg",
              width: 23,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedPageIndex == 2 ? "assets/video.svg" : "assets/clip.svg",
              width: 23,
              color: Colors.black,
            ),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedPageIndex == 3
                  ? "assets/heart_active.svg"
                  : "assets/heart.svg",
              width: 23,
            ),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset(
            //   _selectedPageIndex == 4
            //       ? "assets/discover_people.svg"
            //       : "assets/discover_people.svg",
            //   width: 23,
            // ),
            icon: _selectedPageIndex == 4
                ? Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.8,
                      ),
                    ),
                    child: Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/jhanvi.JPG"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                : Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/jhanvi.JPG"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
