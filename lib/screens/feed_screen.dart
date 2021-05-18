import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

import '../widgets/posts.dart';
import '../widgets/stories.dart';

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
              width: 120,
            ),
            SvgPicture.asset(
              "assets/messenger.svg",
              width: 24,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20, left: 15, bottom: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 65,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: 66,
                                height: 66,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage("assets/jhanvi.JPG"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 19,
                                  height: 19,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Color(0xFF0494F5),
                                    size: 19,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 9),
                        Center(
                          child: Text(
                            "Your Story",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: List.generate(
                      5,
                      (index) => StoryWidget(),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.1),
              thickness: 1,
            ),
            Column(
              children: List.generate(
                5,
                (index) => PostWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
