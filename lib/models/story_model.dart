import 'package:facebook_clone/models/models.dart';

class Story {
  final User user;
  final String imageUrl;
  final bool isViewd;

  const Story({
    required this.user,
    required this.imageUrl,
    required this.isViewd,
  });
}
