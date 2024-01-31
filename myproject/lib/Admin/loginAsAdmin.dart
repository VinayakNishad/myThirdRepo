import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyLoginAsAdmin extends StatefulWidget {
  const MyLoginAsAdmin({Key? key}) : super(key: key);

  @override
  _MyLoginAsAdmin createState() => _MyLoginAsAdmin();
}

class _MyLoginAsAdmin extends State<MyLoginAsAdmin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                'Login\nAs Admin',
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
                              suffixIcon:Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.purpleAccent),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            onPressed: () => {
                            },
                            child: Text('Login'),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.all(18)),
                              elevation: MaterialStatePropertyAll(9),
                              fixedSize: MaterialStatePropertyAll(
                                  Size.fromWidth(500)
                              ),
                            ),
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
