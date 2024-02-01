import 'package:flutter/material.dart';

import 'LeaderMain.dart';
class AdminScreen extends StatefulWidget {
  final User user;

  AdminScreen({required this.user});

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController scoreController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.user.name;
    scoreController.text = widget.user.score.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Enter Name'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: scoreController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Score'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String inputName = nameController.text.trim();
                String inputScore = scoreController.text.trim();
                if (inputName.isNotEmpty && inputScore.isNotEmpty) {
                  int newScore = int.parse(inputScore);
                  User updatedUser = User(inputName, newScore);
                  Navigator.pop(context, updatedUser);
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}


