import 'dart:async';
import 'package:flutter/material.dart';

import 'Student/loginAsStudent.dart';
import 'interface.dart';

class SplashScreen extends StatefulWidget {
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  void initState(){
    super.initState();

    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(
            builder: (context)=> DropdownMenuApp(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Center(child: Text('Campus connect', style:
        TextStyle(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),)),
      ),
    );
  }
}



