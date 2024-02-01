import 'package:flutter/material.dart';
import 'AdminScreen.dart';
import 'LeaderMain.dart';
class LeaderboardScreen extends StatefulWidget {
  final List<User> users;

  LeaderboardScreen(this.users);

  @override
  _LeaderboardScreenState createState() => _LeaderboardScreenState();
}
class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildUserWidget(widget.users[0]),
              _buildUserWidget(widget.users[1]),
              _buildUserWidget(widget.users[2]),
            ],
          ),
          SizedBox(height: 16), // Adjust as needed
          Expanded(
            child: ListView.builder(
              itemCount: widget.users.length - 3, // Exclude the top 3 users
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(widget.users[index + 3].name),
                  subtitle: Text('Score: ${widget.users[index + 3].score}'),
                  leading: CircleAvatar(
                    child: Text((index + 4).toString()),
                    backgroundColor: _getAvatarColor(index + 3),
                    foregroundColor: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminScreen(user: widget.users[index + 3]),
                      ),
                    ).then((updatedUser) {
                      if (updatedUser != null) {
                        setState(() {
                          widget.users[index + 3] = updatedUser;
                          // Re-sort the users after the update
                          widget.users.sort((a, b) => b.score.compareTo(a.score));
                        });
                      }
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addNewUser(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
  void _addNewUser(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController nameController = TextEditingController();
        TextEditingController scoreController = TextEditingController();

        return AlertDialog(
          title: Text('Add New User'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                String inputName = nameController.text.trim();
                String inputScore = scoreController.text.trim();
                if (inputName.isNotEmpty && inputScore.isNotEmpty) {
                  int newScore = int.parse(inputScore);
                  User newUser = User(inputName, newScore);
                  setState(() {
                    widget.users.add(newUser);
                    // Re-sort the users after the update
                    widget.users.sort((a, b) => b.score.compareTo(a.score));
                  });
                  Navigator.pop(context);
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildUserWidget(User user) {
    return Column(
      children: [
        CircleAvatar(
          child: Text(user.name[0]),
          backgroundColor: _getAvatarColor(widget.users.indexOf(user)),
          foregroundColor: Colors.white,
        ),
        SizedBox(height: 8),
        Text(user.name),
        Text('Score: ${user.score}'),
      ],
    );
  }

  // Function to determine the avatar color based on the user's rank
  Color _getAvatarColor(int index) {
    if (index == 0) {
      return Color(0xFFFFD700); // Gold color for the top user
    } else if (index == 1) {
      return Color(0xFFC0C0C0); // Silver for the second user
    } else if (index == 2) {
      return Color(0xFF964B00); // Brown for the third user
    } else {
      return Colors.blue; // Default color for other users
    }
  }
}



