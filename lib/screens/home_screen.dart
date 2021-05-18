import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/feed_screen.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FeedScreen(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
