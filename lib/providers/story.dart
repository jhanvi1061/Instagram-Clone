import 'package:flutter/material.dart';

class Story with ChangeNotifier {
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
      username: "Anna",
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtxwBGpoFONlCRbZw5zEvhbhNJwxkDHrSV_A&usqp=CAU',
    ),
    Story(
      id: "2",
      username: "John",
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtxwBGpoFONlCRbZw5zEvhbhNJwxkDHrSV_A&usqp=CAU',
    ),
    Story(
      id: "3",
      username: "Cherry",
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtxwBGpoFONlCRbZw5zEvhbhNJwxkDHrSV_A&usqp=CAU',
    ),
    Story(
      id: "4",
      username: "Jen",
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtxwBGpoFONlCRbZw5zEvhbhNJwxkDHrSV_A&usqp=CAU',
    ),
    Story(
      id: "5",
      username: "Ben",
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtxwBGpoFONlCRbZw5zEvhbhNJwxkDHrSV_A&usqp=CAU',
    ),
    Story(
      id: "6",
      username: "Anna",
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtxwBGpoFONlCRbZw5zEvhbhNJwxkDHrSV_A&usqp=CAU',
    ),
  ];

  List<Story> get stories => [..._stories];
}
