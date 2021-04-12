import 'package:blog/components/menu_item.dart';
import 'package:blog/constants.dart';
import 'package:blog/header.dart';
import 'package:blog/homescreen.dart';
import 'package:blog/models/blog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Blog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBgColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: TextButton.styleFrom(backgroundColor: kPrimaryColor)),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: kBodyTextColor),
            bodyText2: TextStyle(color: kBodyTextColor),
            headline5: TextStyle(color: kDarkBlackColor),
          )),
      home: SafeArea(child: MainScreen()),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: HomeScreen(),
            )
          ],
        ),
      ),
    );
  }
}
