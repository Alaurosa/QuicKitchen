import 'package:flutter/material.dart';
import 'package:simplymakedemo/categories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simply Make',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.white,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void nextPage(){
  //   Navigator.push(context, MaterialPageRoute(builder: (context)=> customize()));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/SimplyMake background.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 
              Container(
                child:Image.asset("assets/SimplyMake logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 30)
                  ),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> customize())),
                  child: const Text("Get Started"),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
