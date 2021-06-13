import 'dart:ui';

import 'package:demo_ubun/widgets/my_drawer.dart';
import 'package:demo_ubun/widgets/orders_ticket.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

import 'dataClasses/orders.dart';

class HomePage extends StatelessWidget {

  Orders order=Orders.constructorSet(1,"Gautam","7009516346","Bhateja Mansion",
  "Abohar Road,Street no. 12",30,30,"Chhole Bhature ",100,"02 04","7009516346","A");
  final list = List<Orders>.generate(100, (index) => Orders.constructorSet(1,"Gautam","7009516346","Bhateja Mansion",
      "Abohar Road,Street no. 12",30,30,"Chhole Bhature ",100,"02 04","7009516346","A"));


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        
        child: Scaffold(
          appBar: AppBar(
            title: Text("Ajuba ",

            ),
            backgroundColor: Colors.blue.shade900,
            bottom: TabBar(tabs: [
              Tab(text: "Pending",),
              Tab(text: "Processing",),
              Tab(text: "Dispatched",),
              Tab(text: "Completed",),
            ],
            enableFeedback: true,
              automaticIndicatorColorAdjustment: true,
              
              ),
            ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context,index){
                    return TicketOrders(list[index]) ;
                },
              ),
              Icon(CupertinoIcons.phone),
              Icon(CupertinoIcons.phone),
              Icon(CupertinoIcons.phone_down),
            ],
          ),
          drawer: MyDrawer(),




        )



            ),
      );






  }
}
