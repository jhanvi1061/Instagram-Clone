import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/widgets/more_btmsheet.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import '../providers/post.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  var icon = SvgPicture.asset("assets/heart.svg", width: 22);

  void changeIcon() {
    setState(() {
      icon = SvgPicture.asset(
        "assets/heart_active.svg",
        width: 22,
        color: Colors.red,
      );
    });
  }

  Future _btmSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return MoreBtmSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print("Build() - PostWidget");
    final posts = Provider.of<Post>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                        image: NetworkImage(posts.profileImg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    posts.postOwnerName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
        GestureDetector(
          onDoubleTap: () => changeIcon(),
          child: Container(
            width: double.infinity,
            height: 340,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(posts.postImg),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: icon,
                    onTap: () => changeIcon(),
                  ),
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
                  style: TextStyle(fontSize: 15, color: Colors.black),
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
                  text: posts.postOwnerName,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: posts.caption,
                  style: TextStyle(fontSize: 15, color: Colors.black),
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
              color: Colors.black.withOpacity(0.4),
              fontSize: 15,
              // fontWeight: FontWeight.w500,
            ),
          ),
        ),
        // SizedBox(height: 12),
        // Padding(
        //   padding: EdgeInsets.only(left: 15, right: 15),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Row(
        //         children: [
        //           Container(
        //             width: 30,
        //             height: 30,
        //             decoration: BoxDecoration(
        //               shape: BoxShape.circle,
        //               image: DecorationImage(
        //                 image: NetworkImage(posts.profileImg),
        //                 fit: BoxFit.cover,
        //               ),
        //             ),
        //           ),
        //           SizedBox(width: 10),
        //           Text(
        //             "Add a comment...",
        //             style: TextStyle(
        //               color: Colors.black.withOpacity(0.4),
        //               fontSize: 15,
        //               fontWeight: FontWeight.w500,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Text(
            "1 day ago",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 11,
              // fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
