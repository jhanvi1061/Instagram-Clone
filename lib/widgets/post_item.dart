import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import '../providers/post.dart';

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build() - PostItem");
    final posts = Provider.of<Post>(context);
    return Container(
      child: Image.network(
        posts.postImg,
        fit: BoxFit.cover,
      ),
    );
  }
}
