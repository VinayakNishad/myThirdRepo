import 'package:flutter/material.dart';
class Leaderboard extends StatefulWidget {

  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    var arr_class = ['TYBSC','SYBSC','FYBSC','TYBcom','FoBsc'];
    return Scaffold(
      appBar: AppBar(title: Text('Leaderboard')),
      body: ListView.separated(itemBuilder: (context, index) {
        return Text(arr_class[index],
          style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,),
        );
      },
      itemCount: arr_class.length,
        separatorBuilder: (context,index){
        return Divider(height: 50,thickness: 2,);
        },
      ),
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   reverse: false,
      //   children: [
      //     Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),
      //     Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),Padding(padding: const EdgeInsets.all(8.0),
      //       child:Text('TYBSC',style: TextStyle(fontSize: 20),),
      //     ),
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //   ],
      // )
    );

  }
}
