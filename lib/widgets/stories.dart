import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
    required this.currentUser,
    required this.stories,
  }) : super(key: key);

  final User currentUser;
  final List<Story> stories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
      height: 150,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (context, index) => index == 0
            ? _StoryCard(val: currentUser, isAddStory: true)
            : _StoryCard(val: stories[index - 1]),
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  const _StoryCard({
    Key? key,
    required this.val,
    this.isAddStory = false,
  }) : super(key: key);

  final dynamic val;
  final bool isAddStory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              val.imageUrl,
              fit: BoxFit.cover,
              height: double.infinity,
              width: 100,
            ),
          ),
          Container(
            height: double.infinity,
            width: 100,
            decoration: BoxDecoration(
              gradient: Palette.storyGradient,
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          Positioned(
            top: 8.0,
            left: 8.0,
            child: isAddStory
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add,
                            color: Palette.facebookBlue, size: 30.0),
                        padding: EdgeInsets.zero),
                  )
                : ProfileAvatar(
                    imageUrl: val.user.imageUrl,
                    hasBorder: !val.isViewd,
                  ),
          ),
          Positioned(
            bottom: 8.0,
            left: 8.0,
            right: 8.0,
            child: Text(
              isAddStory ? 'Add to Story' : val.user.name,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
