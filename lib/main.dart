import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:simplymakedemo/home.dart';

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
        primarySwatch: Colors.blue,
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
        title: Center(child: Text("Welcome Back")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: FractionalOffset(0.1, 0.6),
              child: Text(
                "Username",
                style: TextStyle(fontSize: 18),
                ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder()
                  ),
                  style: TextStyle(fontSize: 18.0),
                  onChanged: (text){
                    displayedText = text;
                  },
                ),
              ),
            Container(
              alignment: FractionalOffset(0.1,0.6),
              child: Text(
                "Password",
                style: TextStyle(fontSize:18.0),
              ),
              padding: const EdgeInsets.only(top:20.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder()
                  ),
                  style: TextStyle(fontSize: 18.0),
                  onChanged: (text){
                    displayedText = text;
                  },  
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forgot your account details?"),
                Padding(
                  padding: const EdgeInsets.only(left:40.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    onPressed: () => {},
                    child: const Text('Sign Up'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ElevatedButton(onPressed: () => home(), child: Text("Next")),
                width: 100,
                ),
            ),

          ],
        ),
      ),
    );
  }
}
