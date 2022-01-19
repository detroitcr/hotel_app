import 'package:flutter/material.dart';
import 'package:hotel_ui/screens/sign_up.dart';

import 'utils/color.dart';

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
      //home: LoginScreen(),
      home: SignUpScreen(),
    );
  }
}
