import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Palette.scaffold,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'facebook clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.scaffold,
      ),
      home: const NavScreen(),
    );
  }
}
