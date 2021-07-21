import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    var container= Container(
      padding:EdgeInsets.all(20),
      width:300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
    );
    
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Your Ingredients"))
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            container,
          ],
        )
      ),
    );
  }
}