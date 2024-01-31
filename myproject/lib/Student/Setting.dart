import 'package:flutter/material.dart';
class Setting extends StatefulWidget {

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting')),
      body: Card(
        elevation: 20,
        shadowColor: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Result 1',style: TextStyle(fontSize: 21),),
        ),
      )
    );

  }
}
