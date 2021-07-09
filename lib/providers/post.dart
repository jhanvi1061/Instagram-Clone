import 'package:flutter/material.dart';

class Post with ChangeNotifier {
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
      postOwnerName: "Olive",
      profileImg:
          'https://www.vhv.rs/dpng/d/426-4264903_user-avatar-png-picture-avatar-profile-dummy-transparent.png',
      postImg:
          'https://cdn.pixabay.com/photo/2016/02/18/18/37/puppy-1207816__340.jpg',
      caption: " Cute puppy",
    ),
    Post(
      id: "2",
      postOwnerName: "Ben",
      profileImg:
          'https://www.vhv.rs/dpng/d/426-4264903_user-avatar-png-picture-avatar-profile-dummy-transparent.png',
      postImg:
          'https://cdn.pixabay.com/photo/2016/11/14/04/45/elephant-1822636_960_720.jpg',
      caption: " Giant elephant",
    ),
    Post(
      id: "3",
      postOwnerName: "Jen",
      profileImg:
          'https://www.vhv.rs/dpng/d/426-4264903_user-avatar-png-picture-avatar-profile-dummy-transparent.png',
      postImg:
          'https://cdn.pixabay.com/photo/2012/09/15/02/22/forest-56930__340.jpg',
      caption: " Scenery",
    ),
    Post(
      id: "4",
      postOwnerName: "Anna",
      profileImg:
          'https://www.vhv.rs/dpng/d/426-4264903_user-avatar-png-picture-avatar-profile-dummy-transparent.png',
      postImg:
          'https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989__340.jpg',
      caption: " Clouds",
    ),
    Post(
      id: "5",
      postOwnerName: "Cherry",
      profileImg:
          'https://www.vhv.rs/dpng/d/426-4264903_user-avatar-png-picture-avatar-profile-dummy-transparent.png',
      postImg:
          'https://media.istockphoto.com/photos/eiffel-tower-picture-id961490712?b=1&k=6&m=961490712&s=170667a&w=0&h=jx4fkV9e_Qz7KbtwRGxqaYxJmLKN1eH9GMOWYcwiLoY=',
      caption: " Eiffel Tower",
    ),
    Post(
      id: "6",
      postOwnerName: "Olive",
      profileImg:
          'https://www.vhv.rs/dpng/d/426-4264903_user-avatar-png-picture-avatar-profile-dummy-transparent.png',
      postImg:
          'https://cdn.pixabay.com/photo/2013/04/04/12/34/mountains-100367__340.jpg',
      caption: " Awesome sunset",
    ),
    Post(
      id: "7",
      postOwnerName: "John",
      profileImg:
          'https://www.vhv.rs/dpng/d/426-4264903_user-avatar-png-picture-avatar-profile-dummy-transparent.png',
      postImg:
          'https://media.istockphoto.com/photos/tourists-sitting-near-campfire-under-starry-sky-picture-id1213691432?b=1&k=6&m=1213691432&s=170667a&w=0&h=IZYW6cUQYRyeTUcWta1a5Rxu6ULG728AzY-6JClQACE=',
      caption: " Camping",
    ),
    Post(
      id: "8",
      postOwnerName: "Anna",
      profileImg:
          'https://www.vhv.rs/dpng/d/426-4264903_user-avatar-png-picture-avatar-profile-dummy-transparent.png',
      postImg:
          'https://cdn.pixabay.com/photo/2017/07/10/21/16/aurora-2491595__340.jpg',
      caption: " Aurora Borealis",
    ),
  ];

  List<Post> get posts => [..._posts];

  Post findById(String id) {
    int index = _posts.indexWhere((post) => post.id == id);
    if (index >= 0) return _posts[index];
    return null;
  }
}
