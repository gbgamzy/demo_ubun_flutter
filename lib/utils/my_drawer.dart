import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: [
          DrawerHeader(
            child:Image.asset("assets/images/app_icon.png",
              height: 200,
              width: 200,

            )


          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical:8,horizontal: 30),
            title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(

              ),
            ),
            enableFeedback: true,
            leading: Icon(CupertinoIcons.home),
            onTap:(){

            },

          ),


          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical:8,horizontal: 30),
            title: Text("Food Menu",
              textScaleFactor: 1.2,
              style: TextStyle(

              ),
            ),
            enableFeedback: true,


            onTap:(){

            },

          ),


          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical:8,horizontal: 30),
            title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(

              ),
            ),
            enableFeedback: true,
            leading: Icon(CupertinoIcons.home),
            onTap:(){

            },

          ),


          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical:8,horizontal: 30),
            title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(

              ),
            ),
            enableFeedback: true,
            leading: Icon(CupertinoIcons.home),
            onTap:(){

            },

          ),


          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical:8,horizontal: 30),
            title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(

              ),
            ),
            enableFeedback: true,
            leading: Icon(CupertinoIcons.home),
            onTap:(){

            },

          ),

        ],
      ),

    );
  }
}

