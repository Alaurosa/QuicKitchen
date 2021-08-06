import 'package:flutter/material.dart';
import 'package:simplymakedemo/find.dart';
import 'package:simplymakedemo/foryou.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String displayedText = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
        title:Center(
          child: (
            Text(
              "Find Recipes",
              style: TextStyle(fontSize: 25)
            )
          ),
        ),
        automaticallyImplyLeading: false,
      ),*/

        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/SimplyMake food background.jpg"),
                fit: BoxFit.cover,
              )),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 30)),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => findRecipes())),
              child: const Text("Search"),
            ),
            Text("| |"),
            TextButton(
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 30)),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => recommended())),
              child: const Text("For You"),
            ),
          ],
        )),
        );
  }
}
