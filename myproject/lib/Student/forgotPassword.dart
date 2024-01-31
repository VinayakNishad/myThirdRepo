import 'package:flutter/material.dart';


class MyForgotPassword extends StatefulWidget {
  const MyForgotPassword({Key? key}) : super(key: key);
  @override
  _MyForgotPasswordState createState() => _MyForgotPasswordState();
}

class _MyForgotPasswordState extends State<MyForgotPassword> {
  @override
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 9,
        ),
        body: Container(
          padding: EdgeInsets.only(top: MediaQuery
              .of(context)
              .size
              .height * 0.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 35, right: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          suffixIcon: TextButton(
                            onPressed: () => {},
                            child: Text('sent OTP'),
                          ),
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius
                              .circular(18),
                          )
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      controller: _otpController,
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Enter OTP",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius
                                .circular(18),
                          )
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                      onPressed:()=>{},
                        child: Text('Verify OTP',style: TextStyle(fontWeight: FontWeight.w700),)
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  }