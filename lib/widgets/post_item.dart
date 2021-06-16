import 'package:flutter/material.dart';
import 'package:instagram_clone/providers/post.dart';
import 'package:provider/provider.dart';

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final posts = Provider.of<Post>(context);
    return Container(
      child: Image.network(
        posts.postImg,
        fit: BoxFit.cover,
      ),
    );
  }
}
