import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/pie_chart.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({ Key? key }) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{return false;},
      child: Scaffold(
     /*  appBar: AppBar(), */
     body: Column(
       children: [
     Center(
       child: Image.asset('assets/port.png',
       height: 300,width: 300,),
     ),
     SizedBox(height: 20,),
     Column(
       children: [
         Text('Your Portfolio is empty',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
         Text('Start Investing now',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 20,),
         Container(
           width: 250,
           child: ElevatedButton(
             
             style: ElevatedButton.styleFrom(primary: btncolor,onPrimary: Colors.white),
             onPressed: (){   Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  PieChart1()));}, child: Text('Start investing')),
         )
       ],
     )
     ],
     )
     ),
    );
  }
}