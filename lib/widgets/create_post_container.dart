import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl, radius: 24),
              const SizedBox(width: 8.0),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?'),
                ),
              )
            ],
          ),
          const Divider(height: 10.0, thickness: .5),
          SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _createPostButton(
                    icondata: Icons.videocam, color: Colors.red, text: 'Live'),
                const VerticalDivider(width: 8.0),
                _createPostButton(
                    icondata: Icons.collections,
                    color: Colors.green,
                    text: 'Photo'),
                const VerticalDivider(width: 8.0),
                _createPostButton(
                    icondata: Icons.video_call,
                    color: Colors.purpleAccent,
                    text: 'Room'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded _createPostButton({icondata, color, text}) {
    return Expanded(
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(icondata, color: color),
        label: Text(text),
      ),
    );
  }
}
