import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/bse.dart';
import 'package:flutter_application_1/screens/nse.dart';
class Indices extends StatefulWidget {
  const Indices({ Key? key }) : super(key: key);

  @override
  _IndicesState createState() => _IndicesState();
}

class _IndicesState extends State<Indices> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
    child:Scaffold(
      appBar: AppBar(
      title: Text('Indices',style: TextStyle(color: Colors.black),),
      iconTheme: IconThemeData(color:Colors.black),
      backgroundColor: Colors.white,
       bottom: const TabBar(
          indicatorColor: appcolor,
          labelColor: Colors.black,
          tabs:[
            Tab(text: 'NSE'),
           Tab(text: 'BSE')
          ]
        ),
        elevation: 0,
      ),
        body: TabBarView(
          children:[
        Nse(),
        Bse()
          ]
          ),
    )
    );
  }
}