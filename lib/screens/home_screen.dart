import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

import '../widgets/expand_more_btmsheet.dart';
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

  Future _btmSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ExapndMoreBtmSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print("Build() - HomeScreen");
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: SizedBox(
        height: 48,
        child: BottomNavigationBar(
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
                width: 21,
              ),
              label: "Feeds",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedPageIndex == 1
                    ? "assets/search_active.svg"
                    : "assets/search.svg",
                width: 21,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedPageIndex == 2
                    ? "assets/video.svg"
                    : "assets/clip.svg",
                width: 21,
                color: Colors.black,
              ),
              label: "Reels",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedPageIndex == 3
                    ? "assets/heart_active.svg"
                    : "assets/heart.svg",
                width: 21,
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
              // icon: _selectedPageIndex == 4
              //     ? Container(
              //         width: 28,
              //         height: 28,
              //         decoration: BoxDecoration(
              //           shape: BoxShape.circle,
              //           border: Border.all(),
              //         ),
              //         child: Container(
              //           width: 27,
              //           height: 27,
              //           decoration: BoxDecoration(
              //             shape: BoxShape.circle,
              //             image: DecorationImage(
              //               image: AssetImage("assets/jhanvi.JPG"),
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //       )
              //     : Container(
              //         width: 28,
              //         height: 28,
              //         decoration: BoxDecoration(
              //           shape: BoxShape.circle,
              //           image: DecorationImage(
              //             image: AssetImage("assets/jhanvi.JPG"),
              //             fit: BoxFit.cover,
              //           ),
              //         ),
              //       ),
              icon: GestureDetector(
                onLongPress: () => _btmSheet(context),
                child: const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage("assets/avatar.png"),
                ),
              ),
              activeIcon: GestureDetector(
                onLongPress: () => _btmSheet(context),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.8),
                  ),
                  child: const CircleAvatar(
                    radius: 11,
                    backgroundImage: AssetImage("assets/avatar.png"),
                  ),
                ),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
