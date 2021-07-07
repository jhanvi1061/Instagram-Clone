import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/providers/post.dart';
import 'package:instagram_clone/widgets/more_btmsheet.dart';
import 'package:provider/provider.dart';

class SpecificPostscreen extends StatefulWidget {
  final String id;

  const SpecificPostscreen({this.id});

  @override
  _SpecificPostscreenState createState() => _SpecificPostscreenState();
}

class _SpecificPostscreenState extends State<SpecificPostscreen> {
  Future _btmSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return MoreBtmSheet();
      },
    );
  }

  Post post;
  bool _isLoading = true;

  void _init() {
    post =
        Provider.of<PostProvider>(context, listen: false).findById(widget.id);
    setState(() => _isLoading = false);
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : post == null
              ? Center(
                  child: Text(
                    "No post found!!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(post.profileImg),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                post.postOwnerName,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () => _btmSheet(context),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Container(
                        width: double.infinity,
                        height: 360,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(post.postImg),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/heart_active.svg",
                                  width: 20),
                              SizedBox(width: 15),
                              SvgPicture.asset("assets/comment.svg", width: 20),
                              SizedBox(width: 15),
                              SvgPicture.asset("assets/share.svg", width: 20),
                            ],
                          ),
                          SvgPicture.asset("assets/save.svg", width: 20),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Liked by ",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            TextSpan(
                              text: "_jhanvi_soni_ ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: "and ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: "12 Others",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: post.postOwnerName,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: post.caption,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "View all 12 comments",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.4), fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "1 day ago",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.4), fontSize: 11),
                      ),
                    ),
                  ],
                ),
    );
  }
}
