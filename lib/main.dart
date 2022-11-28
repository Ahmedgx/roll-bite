import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_bite/signup_Screen.dart';
import 'package:roll_bite/splash_screen.dart';
import 'package:roll_bite/welcome_screen.dart';

import 'login_screen.dart';

void main() {


  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signupScreen(),
    );
  }
}