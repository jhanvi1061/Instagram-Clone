import 'package:flutter/material.dart';

class Story {
  final String id;
  final String username;
  final String imageUrl;

  Story({
    @required this.id,
    @required this.username,
    @required this.imageUrl,
  });
}

class StoryProvider with ChangeNotifier {
  List<Story> _stories = [
    Story(
      id: "1",
      username: "_p1_",
      imageUrl:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p1.webp',
    ),
    Story(
      id: "2",
      username: "_p2_",
      imageUrl:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p2.webp',
    ),
    Story(
      id: "3",
      username: "_p3_",
      imageUrl:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p3.webp',
    ),
    Story(
      id: "4",
      username: "_p4_",
      imageUrl:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p4.webp',
    ),
    Story(
      id: "5",
      username: "_p5_",
      imageUrl:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p5.webp',
    ),
    Story(
      id: "6",
      username: "_p6_",
      imageUrl:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p6.webp',
    ),
  ];

  List<Story> get stories => [..._stories];

  int get items => _stories.length;

  notifyListeners();
}
