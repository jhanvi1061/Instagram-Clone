import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/widgets/add_btmsheet.dart';
import 'package:instagram_clone/widgets/expand_more_btmsheet.dart';
import 'package:instagram_clone/widgets/menu_btmsheet.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future _btmSheet1(context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(17),
        ),
      ),
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(17),
        ),
      ),
      // isDismissible: true,
      // isScrollControlled: true,
      builder: (BuildContext context) {
        return AddBtmSheet();
      },
    );
  }

  Future _btmSheet3(context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(17),
        ),
      ),
      // isDismissible: true,
      // isScrollControlled: true,
      builder: (BuildContext context) {
        return MenuBtmSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print("Build() - ProfileScreen");
    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            children: [
              Icon(Icons.lock_outline),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: SvgPicture.asset(
                  "assets/new_post.svg",
                  width: 23,
                ),
                onTap: () => _btmSheet2(context),
              ),
            ),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                child: Icon(
                  Icons.menu,
                  size: 30,
                ),
                onTap: () => _btmSheet3(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
