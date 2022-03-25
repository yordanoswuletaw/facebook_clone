import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    required this.imageUrl,
    this.isActive = false,
    this.hasBorder = false,
    this.radius = 22,
  }) : super(key: key);

  final String imageUrl;
  final bool isActive;
  final bool hasBorder;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder ? radius - 2 : radius,
            backgroundColor: Colors.grey[200],
            backgroundImage: AssetImage(imageUrl),
          ),
        ),
        if (isActive)
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Container(
              width: 13.0,
              height: 13.0,
              decoration: BoxDecoration(
                color: Palette.online,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1.5),
              ),
            ),
          ),
      ],
    );
  }
}
