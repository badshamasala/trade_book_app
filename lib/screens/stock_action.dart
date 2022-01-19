import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/topgainers.dart';
import 'package:flutter_application_1/screens/toplosers.dart';
class StockAction extends StatefulWidget {
  const StockAction({ Key? key }) : super(key: key);

  @override
  _StockActionState createState() => _StockActionState();
}

class _StockActionState extends State<StockAction> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child:Scaffold(
      appBar: AppBar(
       iconTheme: IconThemeData(
    color: Colors.black
  ),
        elevation: 0,
        backgroundColor: Colors.white,
        title:Text('Stock Action',style: TextStyle(color: Colors.black)),
        bottom: const TabBar(
          indicatorColor: appcolor,
          labelColor: Colors.black,
          tabs:[
            Tab(text: 'Top Gainers'),
           Tab(text: 'Top Losers')
          ]
        ),
        ),
        body: TabBarView(
          children:[
            TopGainers(),
            TopLosers()
          ]
          ),
    )
    );
  }
}