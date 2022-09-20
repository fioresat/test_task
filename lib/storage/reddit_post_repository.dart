import 'package:test_task/storage/reddit_post.dart';

class RedditPostsRepository {
  final _redditPosts = <RedditPost>[];

  List<RedditPost> get redditPosts => _redditPosts;

  void addNewPost(RedditPost redditPost) {
    _redditPosts.insert(0, redditPost);
  }

  void removePost(int index) {
    _redditPosts.removeAt(index);
  }
}
