import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Student/home.dart';

class MyLoginAsTeacher extends StatefulWidget {
  const MyLoginAsTeacher({Key? key}) : super(key: key);

  @override
  _MyLoginAsTeacher createState() => _MyLoginAsTeacher();
}

class _MyLoginAsTeacher extends State<MyLoginAsTeacher> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void login()async{
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    if(email==""||password==""){
      log("Please fill all the fields");
    }
    else{
      try{
        UserCredential userCredential=  await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: email, password: password);
        if(userCredential.user!=null){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyHome()),
          );
        }

      } on FirebaseAuthException catch(ex){
        log(ex.code.toString());
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(''),
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Login\nAs Teacher',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            controller: _emailController,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Mobile number",
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(left:12.0,right: 12.0),
                                child: TextButton(
                                    onPressed: () {

                                    },
                                    child: Text('sent OTP',style:
                                    TextStyle(
                                        fontWeight: FontWeight.w700),
                                    )
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CupertinoButton.filled(
                            onPressed: login,  // Remove the semicolon after login
                            child: const Text('Login', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
