import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
class Notification1 extends StatefulWidget {
  const Notification1({ Key? key }) : super(key: key);

  @override
  _Notification1State createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Notification',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
           Container(
             width: 300,
             child: Text('Today',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))),
             SizedBox(height: 10,),
          Row(
             children: [
               SizedBox(width: 10,),
              Image.network('https://images.unsplash.com/photo-1641793498705-fdb90b801af1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
              height: 50,width: 50,),
                  SizedBox(width: 10,),
              Column(
                children: [
                  Text('This is the notify you that your recharge '),
                  Text('is over please kindly pay the bill')
                ],
              )
           ],
           ),
           SizedBox(height: 10,),
           OutlinedButton(
             style: OutlinedButton.styleFrom(
               primary: btncolor,
               side: BorderSide(color: btncolor)
               
             ),
             onPressed: (){}, 
             child: Text('Attend Event')),
             SizedBox(height: 10,),
            Row(
             children: [
               SizedBox(width: 10,),
              Image.network('https://images.unsplash.com/photo-1638913660106-73b4bac0db09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
              height: 50,width: 50,),
                  SizedBox(width: 10,),
              Column(
                children: [
                  Text('This is the notify you that your recharge '),
                  Text('is over please kindly pay the bill')
                ],
              )
           ],
           ),
           SizedBox(height: 10,),
             Container(
             width: 300,
             child: Text('Yesterday',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))),
             SizedBox(height: 10,),
              Row(
             children: [
               SizedBox(width: 10,),
              Image.network('https://images.unsplash.com/photo-1641793498705-fdb90b801af1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
              height: 50,width: 50,),
                  SizedBox(width: 10,),
              Column(
                children: [
                  Text('This is the notify you that your recharge '),
                  Text('is over please kindly pay the bill')
                ],
              )
           ],
           ),
           SizedBox(height: 10,),
          Row(
             children: [
               SizedBox(width: 10,),
              Image.network('https://images.unsplash.com/photo-1638913662252-70efce1e60a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
              height: 50,width: 50,),
                  SizedBox(width: 10,),
              Column(
                children: [
                  Text('This is the notify you that your recharge '),
                  Text('is over please kindly pay the bill')
                ],
              )
           ],
           ),
      ],
      ),
    );
  }
}