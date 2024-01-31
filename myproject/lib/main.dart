import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myproject/screens/email_auth/login_screen.dart';
import 'package:myproject/screens/email_auth/signup_screen.dart';
import 'package:myproject/splash_screen.dart';

import 'Admin/loginAsAdmin.dart';
import 'Council/loginAsCouncilMember.dart';
import 'Student/forgotPassword.dart';
import 'Student/home.dart';
import 'Teacher/loginAsTeacher.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        'register': (context) => MyRegister(),
        'loginAsStudent': (context) => MyLogin(),
        'home':(context)=>MyHome(),
        'forgotPassword':(context)=>MyForgotPassword(),
        'loginAsTeacher':(context)=>MyLoginAsTeacher(),
        'loginAsAdmin':(context)=>MyLoginAsAdmin(),
        'loginAsCouncil':(context) => LoginAsCM(),
      },
    );
  }
}