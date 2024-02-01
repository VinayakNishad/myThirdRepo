import 'package:flutter/material.dart';
import 'LeaderBoardScreen.dart';


class User {
  String name;
  int score;

  User(this.name, this.score);
}

class LeaderMain extends StatelessWidget {
  final List<User> users = [
    User('User1', 100),
    User('User2', 80),
    User('User3', 120),
    User('User4', 90),
    User('User5', 110),
  ];

  @override
  Widget build(BuildContext context) {
    // Sort users based on their scores in descending order
    users.sort((a, b) => b.score.compareTo(a.score));

    return MaterialApp(
      home: LeaderboardScreen(users),
    );
  }
}