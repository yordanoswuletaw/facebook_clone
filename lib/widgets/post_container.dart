import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _PostHeader(post: post),
          const SizedBox(height: 4.0),
          Text(post.caption),
          const SizedBox(height: 8.0),
          Image.asset(post.imageUrl),
          const SizedBox(height: 8.0),
          _PostStatus(post: post),
        ],
      ),
    );
  }
}

class _PostStatus extends StatelessWidget {
  const _PostStatus({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              child:
                  const Icon(Icons.thumb_up, size: 10.0, color: Colors.white),
              decoration: const BoxDecoration(
                color: Palette.facebookBlue,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 4.0),
            Expanded(
              child: Text(
                '${post.links}',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Text(
              '${post.comments} comments',
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(width: 4.0),
            Text(
              '${post.shares} shares',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _PostButton(
                icon: Icons.thumb_up_outlined, label: 'Like', callback: () {}),
            _PostButton(
                icon: Icons.comment_outlined,
                label: 'Comment',
                callback: () {}),
            _PostButton(
                icon: Icons.share_outlined, label: 'Share', callback: () {}),
          ],
        ),
      ],
    );
  }
}

class _PostButton extends StatelessWidget {
  const _PostButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.callback,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Material(
        child: InkWell(
          onTap: callback,
          child: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(icon, color: Colors.grey[600], size: 22.0),
                ),
                TextSpan(
                    text: '\t$label', style: TextStyle(color: Colors.grey[600]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  const _PostHeader({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(
          imageUrl: post.user.imageUrl,
          radius: 18,
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.user.name),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${post.timeAgo} . ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 12.0),
                    ),
                    WidgetSpan(
                      child: Icon(Icons.public,
                          color: Colors.grey[600], size: 12.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
      ],
    );
  }
}
