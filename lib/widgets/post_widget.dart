import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import '../providers/post.dart';
import '../widgets/more_btmsheet.dart';

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

  Future _btmSheet(context, String id) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return MoreBtmSheet(id: id);
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
                        image: NetworkImage(posts.profileImg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    posts.postOwnerName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () => _btmSheet(context, posts.id),
              ),
            ],
          ),
        ),
        GestureDetector(
          onDoubleTap: () => changeIcon(),
          child: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Container(
              width: double.infinity,
              height: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(posts.postImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
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
                  const SizedBox(width: 15),
                  SvgPicture.asset("assets/comment.svg", width: 20),
                  const SizedBox(width: 15),
                  SvgPicture.asset("assets/share.svg", width: 20),
                ],
              ),
              SvgPicture.asset("assets/save.svg", width: 20),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: RichText(
            text: const TextSpan(
              children: [
                const TextSpan(
                  text: "Liked by ",
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                ),
                const TextSpan(
                  text: "abc ",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(
                  text: "and ",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(
                  text: "12 Others",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: posts.postOwnerName,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: posts.caption,
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
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
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Text(
            "1 day ago",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 11,
              // fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
