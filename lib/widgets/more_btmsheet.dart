import 'package:flutter/material.dart';

class MoreBtmSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
    const edgeInsets = const EdgeInsets.all(10.0);
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
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: edgeInsets,
                child: Text("Report...", style: textStyle),
              ),
              SizedBox(height: 10),
              Padding(
                padding: edgeInsets,
                child: Text("Turn on Post Notifications", style: textStyle),
              ),
              SizedBox(height: 10),
              Padding(
                padding: edgeInsets,
                child: Text("Copy Link", style: textStyle),
              ),
              SizedBox(height: 10),
              Padding(
                padding: edgeInsets,
                child: Text("Share to...", style: textStyle),
              ),
              SizedBox(height: 10),
              Padding(
                padding: edgeInsets,
                child: Text("Unfollow", style: textStyle),
              ),
              SizedBox(height: 10),
              Padding(
                padding: edgeInsets,
                child: Text("Mute", style: textStyle),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
