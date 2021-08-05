import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String displayedText=" ";
  final List<Map<String, dynamic>> _allRecipes = [
    {"id": "Asian Slaw", "name" : "Asian Slaw", "cuisine" : "Asian" }
  ];

   List<Map<String, dynamic>> _foundRecipes = [

   ];

   final List<List<String>> recipes = <List<String>>[
     ["assets/asian slaw.jpg", "Asian Slaw"],
     ["assets/Tteokbokki.jpg", "Tteokbokki"],
   ];

  @override
  initState() {
    _foundRecipes = _allRecipes;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allRecipes;
    } else {
      results = _allRecipes
      .where((user) =>
        user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
        .toList();
    }
    setState(() {
      _foundRecipes = results;
    });
  }

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

      body: 
      Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/SimplyMake food background.jpg"
              ),
              fit: BoxFit.cover,
            )
          ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      onChanged: (value) => _runFilter(value),
                      decoration: InputDecoration(
                        labelText: 'Search', suffixIcon: Icon(Icons.search)
                      ),
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
                            subtitle: Text(
                              _foundRecipes[index]["cuisine"].toString()
                            ),
                          ),
                        ),
                      )
                      : Text(
                        'No results found',
                        style: TextStyle(fontSize: 24),
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
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: recipes.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index){
                        return GestureDetector(
                          onTap: () => null,
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
                      child: Text(
                        "Sweet Tooth",
                        style: TextStyle(
                          fontSize: 20
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
        )
      ),
    );
  }
}