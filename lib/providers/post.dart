import 'package:flutter/material.dart';

class Post {
  final String id;
  final String postOwnerName;
  final String profileImg;
  final String postImg;
  final String caption;

  Post({
    @required this.id,
    @required this.postOwnerName,
    @required this.profileImg,
    @required this.postImg,
    @required this.caption,
  });
}

class PostProvider with ChangeNotifier {
  List<Post> _posts = [
    Post(
      id: "1",
      postOwnerName: "_p7_",
      profileImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p7.webp',
      postImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p7.webp',
      caption: "Good day",
    ),
    Post(
      id: "2",
      postOwnerName: "_p8_",
      profileImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p8.webp',
      postImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p8.webp',
      caption: "Good day",
    ),
    Post(
      id: "3",
      postOwnerName: "_p9_",
      profileImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p9.webp',
      postImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p9.webp',
      caption: "Good day",
    ),
    Post(
      id: "4",
      postOwnerName: "_p10_",
      profileImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p10.webp',
      postImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p10.webp',
      caption: "Good day",
    ),
    Post(
      id: "5",
      postOwnerName: "_p11_",
      profileImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p11.webp',
      postImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p11.webp',
      caption: "Good day",
    ),
    Post(
      id: "6",
      postOwnerName: "_p12_",
      profileImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p12.webp',
      postImg:
          'https://raw.githubusercontent.com/jhanvi1061/Shop-App/master/web%20assests/p12.webp',
      caption: "Good day",
    ),
  ];

  List<Post> get posts => [..._posts];

  int get itemCount => _posts.length;

  notifyListeners();
}
