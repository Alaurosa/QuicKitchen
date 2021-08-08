import 'package:flutter/material.dart';
import 'package:simplymakedemo/Tteokbokki.dart';

class findRecipes extends StatefulWidget {
  const findRecipes({Key? key}) : super(key: key);

  @override
  _findRecipesState createState() => _findRecipesState();
}

class _findRecipesState extends State<findRecipes> {
  final List<Map<String, dynamic>> _allRecipes = [
    {
      "id": "Carrots",
      "name": "Asian Slaw",
      "cuisine": "Components: Vegetables, Dressing"
    },
    {
      "id": "Kimchi",
      "name": "Kimchi Fried Rice",
      "cuisine": "Compenents: Kimchi, Rice, Soy Sauce"
    },
    {
      "id": "Rice Cake",
      "name": "Tteokbokki",
      "cuisine": "Compenents: Rice Cakes, Fish Cakes"
    }
  ];

  List<Map<String, dynamic>> _foundRecipes = [];

  @override
  initState() {
    _foundRecipes = _allRecipes;
    super.initState();
  }

  void tteokbokki() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => KoreanTteokbokki()));
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allRecipes;
    } else {
      results = _allRecipes
          .where((user) =>
              user["id"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundRecipes = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/SimplyMake food background.jpg"),
        fit: BoxFit.cover,
      )), child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              child: TextField(
                onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(
                    labelText: 'Search', suffixIcon: Icon(Icons.search)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundRecipes.length > 0
                  ? ListView.builder(
                      itemCount: _foundRecipes.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundRecipes[index]["id"]),
                        color: Colors.amberAccent,
                        elevation: 4,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: Text(
                            _foundRecipes[index]["id"].toString(),
                            style: TextStyle(fontSize: 24),
                          ),
                          title: Text(_foundRecipes[index]['name']),
                          subtitle:
                              Text(_foundRecipes[index]["cuisine"].toString()),
                          onTap:(){ if (index == 2){
                            tteokbokki();
                          }}
                        ),
                      ),
                    )
                  : Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
      
    ));
  }
}
