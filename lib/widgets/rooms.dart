import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({
    Key? key,
    required this.onlineUsers,
  }) : super(key: key);

  final List<User> onlineUsers;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => index == 0
            ? const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: _CreateRoomButton(),
              )
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                child: ProfileAvatar(
                  imageUrl: onlineUsers[index - 1].imageUrl,
                  isActive: true,
                ),
              ),
        itemCount: 1 + onlineUsers.length,
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
        side: MaterialStateProperty.all(
          BorderSide(width: 3.0, color: Colors.blueAccent.withOpacity(.7)),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(color: Palette.facebookBlue),
        ),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.creatRoomGradient.createShader(rect),
            child:
                const Icon(Icons.video_call, color: Colors.white, size: 35.0),
          ),
          const SizedBox(width: 4.0),
          const Text('Create\nRoom'),
        ],
      ),
    );
  }
}
