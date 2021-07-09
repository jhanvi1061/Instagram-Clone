import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import '../providers/story.dart';

class StoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build() - StoryWidget");
    final story = Provider.of<Story>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF9B2282),
                  const Color(0xFFEEA863),
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
                    image: NetworkImage(story.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Center(
            child: Text(
              story.username,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
