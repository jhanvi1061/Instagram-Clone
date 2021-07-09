import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StoryHighlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build() - StoryHighlight");
    var widget = Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Container(
        width: 54,
        height: 54,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Keep your favorite stories on your profile"),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey[300],
                          width: 1.2,
                        ),
                      ),
                      child: const Center(
                        child: const Icon(CupertinoIcons.add, size: 26),
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Text("New", style: const TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(width: 26),
                widget,
                const SizedBox(width: 26),
                widget,
                const SizedBox(width: 26),
                widget,
                const SizedBox(width: 26),
                widget,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
