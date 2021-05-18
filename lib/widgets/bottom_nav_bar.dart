import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  int selectedPage(index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List items = [
      pageIndex == 0 ? "assets/home_active.svg" : "assets/home.svg",
      pageIndex == 1 ? "assets/search_active.svg" : "assets/search.svg",
      pageIndex == 2 ? "assets/gallery.svg" : "assets/new_post.svg",
      pageIndex == 3 ? "assets/heart_active.svg" : "assets/heart.svg",
      pageIndex == 4
          ? "assets/discover_people.svg"
          : "assets/discover_people.svg",
    ];
    return Container(
      width: double.infinity,
      height: 56,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            items.length,
            (index) {
              return GestureDetector(
                child: SvgPicture.asset(
                  items[index],
                  width: 26,
                ),
                onTap: () {
                  selectedPage(index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
