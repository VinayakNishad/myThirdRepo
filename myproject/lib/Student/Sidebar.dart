import 'package:flutter/material.dart';
class Sidebar extends StatefulWidget{
  const Sidebar({Key? key}):super(key: key);
  @override
  _SidebarState createState() => _SidebarState();
}
class _SidebarState extends State<Sidebar> {
@override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('sidebar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text(''),
              onTap: (){},
            ),
            ListTile(
              title: const Text(''),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }

}