import 'package:flutter/material.dart';
class Position extends StatelessWidget {
  const Position({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{return false;},
      child:  Scaffold(
     /*  appBar: AppBar(
        title: Text('Position'),
      ), */
      )
    );
  }
}