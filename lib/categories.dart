import 'package:flutter/material.dart';
import 'package:simplymakedemo/home.dart';

class customize extends StatefulWidget {
  const customize({ Key? key }) : super(key: key);

  @override
  _customizeState createState() => _customizeState();
}

class _customizeState extends State<customize> {
  String displayedText=" ";

  final List<List<String>> category = <List<String>>[
    ["assets/korean.jpg", "Korean"],
    ["assets/mexican.jpg", "Mexican"],
    ["assets/american.jpg", "American"]
  ];

  void home(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()));
    setState(() {
      displayedText=" ";
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:Center(
          child: (
            Text(
              "Customize Your Experience",
              style: TextStyle(
                fontSize: 25
              ),
            )
          ),
        )
      ),

      
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "What kind of cook are you?",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlineButton(
                    child: Text(
                      "Novice",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                      onPressed: (){},
                  ),
                  OutlineButton(
                    child: Text(
                      "Experienced",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                      onPressed: (){},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlineButton(
                    child: Text(
                      "Professional",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Which Cuisines do You Prefer?",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Expanded(
                child: GridView.builder(
                itemCount: category.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    child: GridTile( 
                      child: Column(
                        children: [
                          Text(
                            category[index][1]
                          ),
                          Image.asset(
                            category[index][0],
                            )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

           // Container(
              // child: ListView.builder(
              //   itemBuilder: (BuildContext context, int index){
              //     return Card(
              //       child: ListTile(
              //         title: Text(category[index][1]),
              //         trailing: Image.asset(category[index][0])
              //       ),
              //     );
              //   },
              // ),
             //),


            /*Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlineButton(
                    child: Text(
                      "Korean",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                      onPressed: (){},
                  ),
                  OutlineButton(
                    child: Text(
                      "Mexican",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                      onPressed: (){},
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlineButton(
                    child: Text(
                      "American",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: (){},
                  ),
                  OutlineButton(
                    child: Text(
                      "Indian",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlineButton(
                    child: Text(
                      "Spanish",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: (){},
                  ),
                  OutlineButton(
                    child: Text(
                      "Swedish",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlineButton(
                    child: Text(
                      "Lativan",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: (){},
                  ),
                  OutlineButton(
                    child: Text(
                      "Italian",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlineButton(
                    child: Text(
                      "Scottish",
                      style: TextStyle(
                        fontSize:20
                      ),
                    ),
                    highlightedBorderColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            */
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () => home(),
                  child: Text("Finish"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen.shade200,
                    onPrimary: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}