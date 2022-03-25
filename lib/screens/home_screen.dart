import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          buildAppbar(),
          const SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            sliver: SliverToBoxAdapter(child: Rooms(onlineUsers: onlineUsers)),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 8.0),
            sliver: SliverToBoxAdapter(
              child: Stories(currentUser: currentUser, stories: stories),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final post = posts[index];
                return PostContainer(post: post);
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar buildAppbar() {
    return SliverAppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'facebook',
        style: TextStyle(
          color: Palette.facebookBlue,
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
        ),
      ),
      centerTitle: false,
      floating: true,
      actions: [
        CircleIconButton(
          icon: Icons.search,
          size: 28.0,
          onPrussed: () {},
        ),
        CircleIconButton(
          icon: CupertinoIcons.chat_bubble_text_fill,
          size: 24.0,
          onPrussed: () {},
        ),
      ],
    );
  }
}
