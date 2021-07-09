import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build() - ActivityScreen");
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'With ',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 32,
          ),
          Text(
            ' by ',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          GestureDetector(
            child: Text(
              'Jhanvi Soni',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () {
              launch('https://linkedin.com/in/jhanvi1810');
            },
          ),
        ],
      ),
    );
  }
}
