import 'package:flutter/material.dart';


class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String displayedText=" ";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title:(
          TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              contentPadding: const EdgeInsets.all(8.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(200.0))
            ),
            style: TextStyle(fontSize: 18.0),
            onChanged: (text){
              displayedText = text;
            },
          )
        ),
        automaticallyImplyLeading: false,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
          ],
        )
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
          icon: Icon(Icons.account_box_rounded)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_add_rounded)
          ),
        ],
      ),
    );
  }
}