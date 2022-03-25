import 'package:facebook_clone/screens/screens.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.account_circle_outlined,
    Icons.group_outlined,
    Icons.notifications_outlined,
    Icons.menu,
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        // body: TabBarView(
        //   physics: const NeverScrollableScrollPhysics(),
        //   children: _screens,
        // ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: !Responsive.isDesktop(context)
            ? SafeArea(
                child: CustomTabBar(
                  icons: _icons,
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
