import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/providers/post.dart';
import 'package:instagram_clone/widgets/add_btmsheet.dart';
import 'package:instagram_clone/widgets/expand_more_btmsheet.dart';
import 'package:instagram_clone/widgets/menu_btmsheet.dart';
import 'package:instagram_clone/widgets/post_item.dart';
import 'package:provider/provider.dart';

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
    var textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w800);
    var widget = Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Container(
        width: 54,
        height: 54,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
      ),
    );
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
                  Icon(CupertinoIcons.lock),
                  SizedBox(width: 5),
                  Text(
                    "_jhanvi_soni_",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  GestureDetector(
                    child: Icon(Icons.expand_more),
                    onTap: () => _btmSheet1(context),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/new_post.svg",
                    width: 23,
                  ),
                  onPressed: () => _btmSheet2(context),
                ),
                SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 2, right: 14),
                  child: GestureDetector(
                    child: Icon(
                      Icons.menu_rounded,
                      size: 30,
                    ),
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
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/jhanvi.JPG"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              "Jhanvi Soni",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 40),
                      Column(
                        children: [
                          Text("22", style: textStyle),
                          SizedBox(height: 5),
                          Text("Posts"),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Text("283", style: textStyle),
                          SizedBox(height: 5),
                          Text("Followers"),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Text("330", style: textStyle),
                          SizedBox(height: 5),
                          Text("Following"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    minimumSize: Size(360, 36),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey[300]),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Story Highlights",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      IconButton(
                        icon: Icon(
                            _expanded ? Icons.expand_less : Icons.expand_more),
                        onPressed: () {
                          setState(() {
                            _expanded = !_expanded;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                if (_expanded)
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Keep your favorite stories on your profile"),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 54,
                                    height: 54,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.grey[300],
                                        width: 1.2,
                                      ),
                                    ),
                                    child: Icon(CupertinoIcons.add, size: 36),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    "New",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              SizedBox(width: 26),
                              widget,
                              SizedBox(width: 26),
                              widget,
                              SizedBox(width: 26),
                              widget,
                              SizedBox(width: 26),
                              widget,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 10),
                TabBar(
                  indicatorColor: Colors.black,
                  indicatorWeight: 1.0,
                  physics: BouncingScrollPhysics(),
                  onTap: _selectTab,
                  tabs: [
                    Tab(
                      icon: SvgPicture.asset("assets/posts.svg",
                          width: 23,
                          color:
                              _currentIndex == 0 ? Colors.black : Colors.grey),
                    ),
                    Tab(
                      icon: SvgPicture.asset("assets/tagged.svg",
                          width: 23,
                          color:
                              _currentIndex == 1 ? Colors.black : Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      GridView.builder(
                        physics: BouncingScrollPhysics(),
                        padding: const EdgeInsets.only(top: 2),
                        itemCount: postsData.posts.length,
                        itemBuilder: (context, i) =>
                            ChangeNotifierProvider.value(
                          value: postsData.posts[i],
                          child: PostItem(),
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                        ),
                      ),
                      Center(
                        child: Text("No tagged posts yet..."),
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
