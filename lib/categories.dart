import 'package:flutter/material.dart';
import 'package:simplymakedemo/navigation.dart';

class customize extends StatefulWidget {
  const customize({Key? key}) : super(key: key);

  @override
  _customizeState createState() => _customizeState();
}

// class category {
//   late String asset;
// }

class _customizeState extends State<customize> {
  String displayedText = " ";
  Icon defnov = Icon(Icons.check_box_outline_blank);
  Icon defexp = Icon(Icons.check_box_outline_blank);
  Icon defpro = Icon(Icons.check_box_outline_blank);
  int defIconNumber = 0;
  bool clicked = false;

  final List<List> category =[
    ["assets/korean.jpg", "Korean", false],
    ["assets/mexican.jpg", "Mexican", false],
    ["assets/american.jpg", "American", false],
    ["assets/middle eastern.jpg", "Middle Eastern", false],
    ["assets/mediterranean.jpg", "Mediterranean", false]
  ];

  void home() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => navigation()));
    setState(() {
      displayedText = " ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: (Text(
              "Customize Your Experience",
              style: TextStyle(fontSize: 25),
            )),
          )),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/SimplyMake food background.jpg"),
          fit: BoxFit.cover,
        )),
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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    child: Row(
                      children: <Widget>[
                        defnov,
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Novice",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () => setState(() {
                      if (defIconNumber == 0) {
                        defnov = Icon(Icons.check_box);
                        defIconNumber = 1;
                      } else {
                        defnov = Icon(Icons.check_box_outline_blank);
                        defIconNumber = 0;
                      }
                    }),
                  ),
                  FlatButton(
                    child: Row(
                      children: <Widget>[
                        defexp,
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Experienced",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () => setState(() {
                      if (defIconNumber == 0) {
                        defexp = Icon(Icons.check_box);
                        defIconNumber = 1;
                      } else {
                        defexp = Icon(Icons.check_box_outline_blank);
                        defIconNumber = 0;
                      }
                    }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    child: Row(
                      children: <Widget>[
                        defpro,
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Professional",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () => setState(() {
                      if (defIconNumber == 0) {
                        defpro = Icon(Icons.check_box);
                        defIconNumber = 1;
                      } else {
                        defpro = Icon(Icons.check_box_outline_blank);
                        defIconNumber = 0;
                      }
                    }),
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
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                        setState(() {
                          category[index][2] = !category[index][2];
                        });
                    },
                    child: Card(
                      color: category[index][2] ? Colors.grey : Colors.blueGrey,
                      child: Container(
                        child: GridTile(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  category[index][1],
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Image.asset(
                                category[index][0],
                                height: 75,
                                width: 110,
                              )
                            ],
                          ),
                        ),
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
