import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddBtmSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
    const edgeInsets = const EdgeInsets.all(6.0);
    var divider = Divider(
      color: Colors.grey.withOpacity(0.2),
      thickness: 0.5,
      indent: 44,
      endIndent: 1,
    );
    return Wrap(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 13, left: 13, right: 13, bottom: 10),
          child: Center(
            child: Container(
              height: 4,
              width: 38,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10),
                  right: Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 6, left: 13, right: 13, bottom: 8),
          child: Center(
            child: Text(
              "Create New",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.2),
          thickness: 0.5,
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    SvgPicture.asset("assets/posts.svg",
                        width: 21, color: Colors.black),
                    SizedBox(width: 15),
                    Text("Feed Post", style: textStyle),
                  ],
                ),
              ),
              divider,
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    SvgPicture.asset("assets/clip.svg",
                        width: 21, color: Colors.black),
                    SizedBox(width: 15),
                    Text("Reel", style: textStyle),
                  ],
                ),
              ),
              divider,
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    Icon(Icons.data_usage_rounded),
                    SizedBox(width: 12),
                    Text("Story", style: textStyle),
                  ],
                ),
              ),
              divider,
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    Icon(Icons.favorite_outline_rounded),
                    SizedBox(width: 12),
                    Text("Story Highlight", style: textStyle),
                  ],
                ),
              ),
              divider,
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    SvgPicture.asset("assets/ig_tv.svg",
                        width: 21, color: Colors.black),
                    SizedBox(width: 15),
                    Text("IGTV Video", style: textStyle),
                  ],
                ),
              ),
              divider,
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    Icon(Icons.menu_book_rounded),
                    SizedBox(width: 12),
                    Text("Guide", style: textStyle),
                  ],
                ),
              ),
              divider,
              SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}
