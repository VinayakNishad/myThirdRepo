import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Icon cusIcon =Icon(Icons.search);
  Widget cusSearchBar =Text("Events");
  Widget build(BuildContext context) {

    var arrEvents=["Dances","Singing","TreasureHunt","FashionShow","PosterMaking"];
    return Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          elevation: 67,
          backgroundColor: Colors.white30,
          centerTitle: true,
          title:cusSearchBar,
          actions: <Widget>[
            InkWell(
              onTap: () {},
              child: SizedBox(
                width:70,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if(cusIcon.icon==Icons.search){
                        cusIcon = const Icon(Icons.search_off);
                        cusSearchBar=const TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "search",
                          ),
                          textInputAction: TextInputAction.go,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        );
                      }
                      else{
                        cusIcon =const Icon(Icons.search);
                        cusSearchBar =const Text("Events");
                      }
                    });
                  }, icon: cusIcon,
                ),),
            ),

          ],
          // backgroundColor: Color.fromRGBO(38, 38, 38, 0.08),
        ),
    body:
        ListView.builder(itemBuilder:(context,index)
          {
              return
                Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 370,
                      height: 150,
                      child: InkWell(
                        onTap: () {
                          print('pressed');
                        },
                        child: Card(
                          elevation: 100,
                          child: Center(
                            child: Text(arrEvents[index],style: TextStyle(
                                fontWeight: FontWeight.w700,fontSize: 20),
                            ),
                          ),
                          color: Colors.lightBlueAccent,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          itemCount: arrEvents.length,
          )
          );
    }
}
