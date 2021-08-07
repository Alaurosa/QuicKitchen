import 'package:flutter/material.dart';

class KoreanTteokbokki extends StatefulWidget {
  const KoreanTteokbokki({Key? key}) : super(key: key);

  @override
  _KoreanTteokbokkiState createState() => _KoreanTteokbokkiState();
}

class _KoreanTteokbokkiState extends State<KoreanTteokbokki> {
  String inputText = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/SimplyMake food background.jpg"),
                fit: BoxFit.cover,
              )),
            ),
          Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    "assets/Tteokbokki.jpg",
                    height: 150,
                    width: 150,
                  ),
                ),
                Text(
                  "Tteokbokki",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text("Total Time: ", style: TextStyle(fontSize: 20)),
                Text(
                  "30 minutes ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text(
                        "Cook/Prep: ",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "10/20",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text("Servings:", style: TextStyle(fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "3",
                      ),
                      style: TextStyle(fontSize: 20.0),
                      onChanged: (text) {
                        inputText = text;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text("Ingredients", style: TextStyle(fontSize: 25)),
          Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("1 pound of ", style: TextStyle(fontSize: 20)),
                      Text("Rice Cakes",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Text(
                        "1 sheet of ",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Fish Cake",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("One Ounce of ", style: TextStyle(fontSize: 20)),
                      Text("Cabbage",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
