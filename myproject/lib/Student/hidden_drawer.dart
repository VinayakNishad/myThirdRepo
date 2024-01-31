import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/model/item_hidden_menu.dart';
import 'package:hidden_drawer_menu/model/screen_hidden_drawer.dart';
import 'home.dart';
class HiddenDrawer extends StatefulWidget{
  const HiddenDrawer({Key? key}) : super(key:key);
  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer>{
  List<ScreenHiddenDrawer> _pages =[];
  @override
  void initState(){
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HomePage',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        MyHome(),)
    ];
  }
  @override
  Widget build(BuildContext context){
    return HiddenDrawerMenu(
        screens: _pages,
        backgroundColorMenu:Colors.deepPurple);
  }
}

