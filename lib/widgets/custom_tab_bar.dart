import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Palette.facebookBlue,
            width: 3.0,
          ),
        ),
      ),
      onTap: onTap,
      tabs: icons
          .asMap()
          .map(
            (i, icon) => MapEntry(
              i,
              Tab(
                icon: Icon(
                  icon,
                  color: i == selectedIndex
                      ? Palette.facebookBlue
                      : Colors.black45,
                ),
              ),
            ),
          )
          .values
          .toList(),
    );
  }
}
