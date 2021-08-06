import 'package:flutter/material.dart';
import 'package:simplymakedemo/Tteokbokki.dart';

class recommended extends StatefulWidget {
  const recommended({Key? key}) : super(key: key);

  @override
  _recommendedState createState() => _recommendedState();
}

class _recommendedState extends State<recommended> {
  final List<List<String>> recipes = <List<String>>[
    ["assets/japchae.jpg", "Japchae"],
    ["assets/Tteokbokki.jpg", "Tteokbokki"],
  ];

  void nextPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => KoreanTteokbokki()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/SimplyMake food background.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Recommended", style: TextStyle(fontSize: 20)),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: recipes.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => nextPage(),
                  child: Card(
                    child: GridTile(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              recipes[index][1],
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Image.asset(
                            recipes[index][0],
                            height: 80,
                            width: 100,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Sweet Tooth", style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    ),
    
    );
  }
}
