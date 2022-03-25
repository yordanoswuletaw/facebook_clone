import 'package:facebook_clone/models/models.dart';

class Post {
  final User user;
  final String caption, timeAgo, imageUrl;
  final int links, comments, shares;

  const Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
    required this.imageUrl,
    required this.links,
    required this.comments,
    required this.shares,
  });
}
