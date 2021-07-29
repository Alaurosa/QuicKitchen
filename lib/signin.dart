import 'package:flutter/material.dart';
import 'package:simplymakedemo/categories.dart';
import 'package:simplymakedemo/signup.dart';
import 'package:http/http.dart';


class openAccount extends StatefulWidget {
  const openAccount({ Key? key }) : super(key: key);

  @override
  _openAccountState createState() => _openAccountState();
}

class _openAccountState extends State<openAccount> {
    String displayedText=" ";

  //void category(){
    // Navigator.push(context, MaterialPageRoute(builder: (context) => Customize()));
    // setState(() {
    //   displayedText=" ";
    // });
  //}

 void signup(){
   Navigator.push(context, MaterialPageRoute(builder: (content)=> createAccount()));
   setState(() {
     displayedText=" ";
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/SimplyMake food background.jpg"
            ),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom:20.0),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),

            ],
          ),
        ),
      ),
    );      
  }
}