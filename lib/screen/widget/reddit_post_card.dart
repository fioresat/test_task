import 'package:test_task/screen/widget/screen_arguments.dart';

import '../../storage/reddit_post.dart';
import 'package:flutter/material.dart';

class RedditPostCard extends StatelessWidget {
  const RedditPostCard(
      {required this.redditPostIndexed, required this.onTap, super.key});

  final RedditPost redditPostIndexed;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Card(
      margin: EdgeInsets.all(15),
      color: Colors.white70,
      child: ListTile(
        leading: redditPostIndexed.picture
                .contains('thumbs.redditmedia.com')
            ? Container(
                width: widthScreen * 0.2,
                height: widthScreen * 0.2,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(redditPostIndexed.picture),
                    fit: BoxFit.contain,
                  ),
                ),
              )
            : null,
        title: Text(
          redditPostIndexed.title,
          style: const TextStyle(fontSize: 22),
        ),
        onTap: onTap,
      ),
    );
  }
}
