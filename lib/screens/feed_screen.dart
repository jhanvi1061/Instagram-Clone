import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import '../providers/post.dart';
import '../providers/story.dart';
import '../widgets/post_widget.dart';
import '../widgets/story_widget.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build() - FeedScreen");
    final storyData = Provider.of<StoryProvider>(context);
    final postsData = Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/new_post.svg", width: 23),
            Image.asset("assets/insta_logo.png", width: 120),
            SvgPicture.asset("assets/messenger.svg", width: 23),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20, left: 15, bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          child: Stack(
                            children: [
                              Container(
                                width: 66,
                                height: 66,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    image:
                                        const AssetImage("assets/avatar.png"),
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
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: const Icon(
                                    Icons.add_circle,
                                    color: Color(0xFF0494F5),
                                    size: 19,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 9),
                        Center(
                          child: const Text(
                            "Your Story",
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ...storyData.stories
                      .map(
                        (story) => ChangeNotifierProvider.value(
                          value: story,
                          child: StoryWidget(),
                        ),
                      )
                      .toList(),
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: storyData.stories.length,
                  //   itemBuilder: (context, i) => ChangeNotifierProvider.value(
                  //     value: storyData.stories[i],
                  //     child: StoryWidget(),
                  //   ),
                  // ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.1),
              thickness: 1,
            ),
            ...postsData.posts
                .map(
                  (post) => ChangeNotifierProvider.value(
                    value: post,
                    child: PostWidget(),
                  ),
                )
                .toList(),
            // Expanded(
            //   child: ListView.builder(
            //     physics: BouncingScrollPhysics(),
            //     shrinkWrap: true,
            //     itemCount: postsData.posts.length,
            //     itemBuilder: (context, i) => ChangeNotifierProvider.value(
            //       value: postsData.posts[i],
            //       child: PostWidget(),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
