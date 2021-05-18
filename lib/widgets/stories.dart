import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF9B2282),
                  Color(0xFFEEA863),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 66,
                height: 66,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.5,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/jhanvi.JPG"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SizedBox(height: 6),
          Center(
            child: Text(
              "_jhanvi_soni_",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
