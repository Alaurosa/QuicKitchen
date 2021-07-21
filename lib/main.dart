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

  void home(){
  Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()));
}

  @override
  Widget build(BuildContext context) {
    var container= Container(
      padding:EdgeInsets.all(20),
      width:300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Welcome Back")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: FractionalOffset(0.2, 0.6),
              child: Text("Username"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: container,
            ),
            Container(
              alignment: FractionalOffset(0.2,0.6),
              child: Text("Password"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: container,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forgot your account details?"),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text("Sign Up"),
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
