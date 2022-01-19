import 'package:flutter/material.dart';
class Bunch extends StatelessWidget {
  const Bunch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{return false;},
      child: Scaffold(
     /*  appBar: AppBar(
        title: Text('Bunch'),
      ), */
      )
    );
  }
}