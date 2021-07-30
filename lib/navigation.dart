import 'package:flutter/material.dart';
import 'package:simplymakedemo/categories.dart';
import 'package:simplymakedemo/home.dart';
import 'package:simplymakedemo/signup.dart';

class navigation extends StatefulWidget {
  const navigation({ Key? key }) : super(key: key);

  @override
  _navigationState createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  var i = 0;
  var items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.dashboard_customize_rounded), label: "Customize"),
    BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded), label: "Your Profile"),
  ];

  var pages = [
    homePage(),
    customize(),
    createAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[i],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        items: items,
        onTap: (index){
          setState(() {
            i = index;
          });
        },
      ),
    );
  }
}