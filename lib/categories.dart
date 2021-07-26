import 'package:flutter/material.dart';
import 'package:simplymakedemo/home.dart';

class customize extends StatefulWidget {
  const customize({ Key? key }) : super(key: key);

  @override
  _customizeState createState() => _customizeState();
}

class _customizeState extends State<customize> {
  String displayedText=" ";
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
                fontSize: 30
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () => home(),
                child: Text("Finish"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen.shade200,
                  onPrimary: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}