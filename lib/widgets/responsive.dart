import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key,
      required this.mobile,
      // ignore: avoid_init_to_null
      this.tablet = null,
      required this.desktop})
      : super(key: key);

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  static bool isMobile(context) => MediaQuery.of(context).size.width < 800;

  static bool isTablete(context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isDesktop(context) => MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth >= 1200) {
        return desktop;
      } else if (constraint.maxWidth >= 800) {
        return tablet ?? mobile;
      }
      return mobile;
    });
  }
}
