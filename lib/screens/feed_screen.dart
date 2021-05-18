import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "assets/new_post.svg",
              width: 24,
            ),
            Image.asset(
              "assets/insta_logo.png",
              width: 110,
            ),
            SvgPicture.asset(
              "assets/messenger.svg",
              width: 24,
            ),
          ],
        ),
      ),
    );
  }
}
