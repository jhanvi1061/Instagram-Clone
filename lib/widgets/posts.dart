import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  Icon icon = Icon(Icons.favorite_border, size: 25);

  void changeIcon() {
    setState(() {
      icon = Icon(
        Icons.favorite,
        color: Colors.red,
        size: 25,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/jhanvi.JPG"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "_jhanvi_soni_",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 340,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/jhanvi.JPG"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  GestureDetector(
                    child: icon,
                    onDoubleTap: () => changeIcon(),
                  ),
                  SizedBox(width: 15),
                  SvgPicture.asset(
                    "assets/comment.svg",
                    width: 20,
                  ),
                  SizedBox(width: 15),
                  SvgPicture.asset(
                    "assets/share.svg",
                    width: 20,
                  ),
                ],
              ),
              SvgPicture.asset(
                "assets/save.svg",
                width: 20,
              ),
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
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
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
                  text: "_jhanvi_soni_ ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "The weather is very nice",
                  style: TextStyle(
                    fontSize: 15,
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
          child: Text(
            "View all 12 comments",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 12),
        Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/jhanvi.JPG"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Add a comment...",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            )),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Text(
            "1 day ago",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
