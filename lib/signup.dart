import 'package:flutter/material.dart';

class createAccount extends StatefulWidget {
  const createAccount({ Key? key }) : super(key: key);

  @override
  _createAccountState createState() => _createAccountState();
}

class _createAccountState extends State<createAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: (
            Text("Your Profile",
            style: TextStyle(fontSize: 25))
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
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
      ),
    );
  }
}