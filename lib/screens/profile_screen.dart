import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future _btmSheet2(context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/jhanvi.JPG"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("_jhanvi_soni_"),
                    ],
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.5,
                      ),
                    ),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(width: 10),
                  Text("Add Account"),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Future _btmSheet1(context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text("Settings"),
                  Text("Archive"),
                  Text("Your Activity"),
                  Text("QR Code"),
                  Text("Saved"),
                  Text("Close Friends"),
                  Text("Disover People"),
                  Text("COVID-19 Information Center"),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print("Build() - ProfileScreen");
    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 56,
          elevation: 0,
          title: Row(
            children: [
              Icon(Icons.lock_outline),
              SizedBox(width: 5),
              Text(
                "_jhanvi_soni_",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              GestureDetector(
                child: Icon(Icons.expand_more),
                onTap: () => _btmSheet2(context),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                "assets/new_post.svg",
                width: 23,
              ),
            ),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                child: Icon(
                  Icons.view_headline_outlined,
                  size: 30,
                ),
                onTap: () => _btmSheet1(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
