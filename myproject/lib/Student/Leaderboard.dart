// import 'package:flutter/material.dart';
// class Leaderboard extends StatefulWidget {
//
//   @override
//   _LeaderboardState createState() => _LeaderboardState();
// }
// class User {
//   final String name;
//   final int score;
//   User(this.name, this.score);
// }
//
// class _LeaderboardState extends State<Leaderboard> {
//   @override
//   final List<User> users = [
//     User('User1', 100),
//     User('User2', 80),
//     User('User3', 120),
//     User('User4', 90),
//     User('User5', 110),
//     User('User6', 100),
//     User('User7', 10),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Leaderboard'),
//         ),
//         body: ListView.builder(
//           itemCount: users.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(users[index].name),
//               subtitle: Text('Score: ${users[index].score}'),
//               leading: CircleAvatar(
//                 child: Text((index + 1).toString()), // Display rank
//               ),
//             );
//           },
//         ),
//       ),
//     );
//
//   }
// }
