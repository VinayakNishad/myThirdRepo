import 'package:flutter/material.dart';
import 'Leaderboard.dart';
import 'MainPage.dart';
import 'Setting.dart';
import 'UpcomingEvents.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentTab = 0;
  final List<Widget> screens = [
    MainPage(),
    UpcomingEvents(),
    Setting(),
    Leaderboard(),

  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = MainPage();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Campus Connect',
        style: TextStyle(fontSize: 16),),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Sidebar '),
            ),
            ListTile(
              title: Text('x'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('y'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,

      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildNavBarItem(Icons.home, 'Home', 0),
                  buildNavBarItem(Icons.search, 'Events', 1),
                  buildNavBarItem(Icons.settings, 'Results', 2),
                  buildNavBarItem(Icons.leaderboard, 'Leaderboard', 3),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, String text, int tabIndex) {
    return MaterialButton(
      minWidth: 50,
      onPressed: () {
        setState(() {
          currentScreen = screens[tabIndex];
          currentTab = tabIndex;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: currentTab == tabIndex ? Colors.blueAccent : Colors.grey,
          ),
          Text(
            text,
            style: TextStyle(
              color: currentTab == tabIndex ? Colors.blueAccent : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
