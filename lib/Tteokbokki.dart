import 'package:flutter/material.dart';
import 'package:simplymakedemo/premium.dart';

class KoreanTteokbokki extends StatefulWidget {
  const KoreanTteokbokki({Key? key}) : super(key: key);

  @override
  _KoreanTteokbokkiState createState() => _KoreanTteokbokkiState();
}

class _KoreanTteokbokkiState extends State<KoreanTteokbokki> {
  String inputText = " ";

  void premium() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PremiumOption()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/SimplyMake food background.jpg"),
        fit: BoxFit.cover,
      )), child: Scrollbar(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Ingredients", style: TextStyle(fontSize: 25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ElevatedButton(
                      onPressed: () => premium(),
                      child: Text("Buy Ingredients"),
                    ),
                  )
                ],
              ),
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
                          Text("4 Ounces of ", style: TextStyle(fontSize: 20)),
                          Text("Cabbage",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text("1 - 2 ", style: TextStyle(fontSize: 20)),
                          Text("Scallions",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("3 Cups", style: TextStyle(fontSize: 20)),
                          Text("Anchovy Broth / Water",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                          children: [
                            Text("3 Tablespoons ", style: TextStyle(fontSize: 20)),
                            Text("Korean Red Chill Paste",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          children: [
                            Text("1 - 3 Teaspoon ", style: TextStyle(fontSize: 20)),
                            Text("Korean Red Chile Flakes",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                          children: [
                            Text("1 Tablespoon ", style: TextStyle(fontSize: 20)),
                            Text("Soy Sauce",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          children: [
                            Text("2 Tablespoons ", style: TextStyle(fontSize: 20)),
                            Text("Sugar",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                          children: [
                            Text("1 Tablespoon ", style: TextStyle(fontSize: 20)),
                            Text("Corn Syrup",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          children: [
                            Text("1 Tablespoon ", style: TextStyle(fontSize: 20)),
                            Text("Minced Garlic",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                    ),
                    Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Instructions", style: TextStyle(fontSize: 25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("1. Make anchovy broth (see note). Soak the rice cakes for about 20 minutes if hardened or refrigerated. Cut the fish cake, cabbage, and scallions into about 2-inch long pieces.", style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("2. Add the anchovy broth (or water) to a large pan. Stir in the sauce ingredients. Bring it to a boil over medium high heat, stirring to dissolve the red chili pepper paste (gochujang).", style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("3. Add the rice cakes. Boil until the rice cakes become very soft and the sauce is thickened, about 8 - 10 minutes. Stir frequently so the rice cakes don't stick to the bottom of the pan.", style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("4. Add the vegetables and fish cakes. Continue to boil, stirring constantly, for an additional 4 - 6 minutes. Depending on rice cakes, you may need more time to reach a desired level of softness. Add more broth or water as necessary. Taste the sauce, and adjust the seasoning if needed. Serve immediately.", style: TextStyle(fontSize: 20)),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),
                  //   child: Text("Extra Notes", style: TextStyle(fontSize: 25)),
                  // ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/SimplyMake food background.jpg"),
                  fit: BoxFit.cover,
                )),
              ),
              
            ],
          )),
        ),
      ),
    ));
  }
}
