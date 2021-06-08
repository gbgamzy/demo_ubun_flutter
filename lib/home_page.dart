import 'dart:ui';

import 'package:demo_ubun/utils/my_drawer.dart';
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Gautam",
          style: TextStyle(
            fontFamily: 'JetBrainsMono',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:Colors.blue


          ),


        ),

        ),
      body: Center(
        child: Container(
            child: Text("Welcome")
        ),
      ),
      drawer: MyDrawer(),

    );


  }
}
