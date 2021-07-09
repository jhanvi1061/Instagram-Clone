import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/specific_post_screen.dart';
import '../providers/post.dart';
import '../widgets/add_btmsheet.dart';
import '../widgets/expand_more_btmsheet.dart';
import '../widgets/menu_btmsheet.dart';
import '../widgets/post_item.dart';
import '../widgets/story_highlight.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future _btmSheet1(context) {
    return showModalBottomSheet(
      context: context,
      // isDismissible: true,
      // isScrollControlled: true,
      builder: (BuildContext context) {
        return ExapndMoreBtmSheet();
      },
    );
  }

  Future _btmSheet2(context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return AddBtmSheet();
      },
    );
  }

  Future _btmSheet3(context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return MenuBtmSheet();
      },
    );
  }

  int _currentIndex = 0;

  void _selectTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    print("Build() - ProfileScreen");
    final postsData = Provider.of<PostProvider>(context);
    var textStyle = const TextStyle(fontSize: 20, fontWeight: FontWeight.w800);
    return Builder(
      builder: (context) {
        return DefaultTabController(
          initialIndex: _currentIndex,
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: Row(
                children: [
                  const Icon(CupertinoIcons.lock),
                  const SizedBox(width: 5),
                  Text(
                    "_the_anonymous_",
                    style: textStyle,
                  ),
                  GestureDetector(
                    child: const Icon(Icons.expand_more),
                    onTap: () => _btmSheet1(context),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: SvgPicture.asset("assets/new_post.svg", width: 23),
                  onPressed: () => _btmSheet2(context),
                ),
                const SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 2, right: 14),
                  child: GestureDetector(
                    child: const Icon(Icons.menu_rounded, size: 30),
                    onTap: () => _btmSheet3(context),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 85,
                            height: 85,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                image: const AssetImage("assets/avatar.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Center(
                            child: const Text(
                              "Jhanvi Soni",
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 40),
                      Column(
                        children: [
                          Text("8", style: textStyle),
                          const SizedBox(height: 5),
                          const Text("Posts"),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Text("280", style: textStyle),
                          const SizedBox(height: 5),
                          const Text("Followers"),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Text("330", style: textStyle),
                          const SizedBox(height: 5),
                          const Text("Following"),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                OutlinedButton(
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    minimumSize: Size(368, 36),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey[300]),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Story Highlights",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      IconButton(
                        icon: Icon(
                            _expanded ? Icons.expand_less : Icons.expand_more),
                        onPressed: () {
                          setState(() => _expanded = !_expanded);
                        },
                      ),
                    ],
                  ),
                ),
                if (_expanded) StoryHighlight(),
                const SizedBox(height: 10),
                TabBar(
                  indicatorColor: Colors.black,
                  indicatorWeight: 1.0,
                  physics: const BouncingScrollPhysics(),
                  onTap: _selectTab,
                  tabs: [
                    Tab(
                      icon: SvgPicture.asset(
                        "assets/posts.svg",
                        width: 23,
                        color: _currentIndex == 0 ? Colors.black : Colors.grey,
                      ),
                    ),
                    Tab(
                      icon: SvgPicture.asset(
                        "assets/tagged.svg",
                        width: 23,
                        color: _currentIndex == 1 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    physics: const ClampingScrollPhysics(),
                    children: [
                      GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.only(top: 2),
                        itemCount: postsData.posts.length,
                        itemBuilder: (context, i) => Hero(
                          tag: postsData.posts[i].id,
                          child: ChangeNotifierProvider.value(
                            value: postsData.posts[i],
                            child: GestureDetector(
                              child: PostItem(),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SpecificPostscreen(
                                          id: postsData.posts[i].id);
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                        ),
                      ),
                      const Center(
                        child: const Text("No tagged posts yet..."),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
