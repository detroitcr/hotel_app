import 'package:flutter/material.dart';
import 'books_list.dart';
import 'home_page.dart';
import 'utils/color.dart';
import 'package:hotel_ui/screens/login_screen.dart';
import 'package:hotel_ui/screens/sign_up.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: HomePage(),
      // home:SignUpScreen(),
    );
  }
}
