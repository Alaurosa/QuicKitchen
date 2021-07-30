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
        title:Center(
          child: (
            Text(
              "Find Recipes",
              style: TextStyle(fontSize: 25)
            )
          ),
        ),
        automaticallyImplyLeading: false,
      ),

      body: Center(
        child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/SimplyMake food background.jpg"
            ),
            fit: BoxFit.cover,
          )
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 375,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: ("Search by ingredient, dish, etc."),
                      prefixIcon: Padding(padding: const EdgeInsets.symmetric(horizontal: 4.0),child: Icon(Icons.search)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      contentPadding: const EdgeInsets.all(8.0),
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 18.0),
                    onChanged: (text){
                      displayedText = text;
                    },
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Recommended",
                    style: TextStyle(
                      fontSize: 20
                    )
                  ),
                ),
                )
            ],
          ),
        )
      ),
    );
  }
}