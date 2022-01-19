import 'package:flutter/material.dart';
class Bse extends StatefulWidget {
  const Bse({ Key? key }) : super(key: key);

  @override
  _BseState createState() => _BseState();
}

class _BseState extends State<Bse> {
  @override
  Widget build(BuildContext context) {
  return Column(
      children: [
        SizedBox(height: 10,),
        Container(
        
          width: 290,
          child: Text('Top BSE Stocks',
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),)),
        ListTile(
          leading: Text('Nifty 50'),
          title:Column(
            children: [
              Text('\u{20B9}${12345.99}'),
              Text('(+12.78)',style: TextStyle(color: Colors.green),)
              
            ],
          ) ,
          trailing: Icon(Icons.more_vert)
        ),
        ListTile(
          leading: Text('Nifty 50'),
          title:Column(
            children: [
              Text('\u{20B9}${12345.99}'),
              Text('(+12.78)',style: TextStyle(color: Colors.red),)
              
            ],
          ) ,
          trailing: Icon(Icons.more_vert)
        ),
        ListTile(
          leading: Text('Nifty 50'),
          title:Column(
            children: [
              Text('\u{20B9}${12345.99}'),
              Text('(+12.78)',style: TextStyle(color: Colors.green),)
              
            ],
          ) ,
          trailing: Icon(Icons.more_vert)
        ),
        ListTile(
          leading: Text('Nifty 50'),
          title:Column(
            children: [
              Text('\u{20B9}${12345.99}'),
              Text('(+12.78)',style: TextStyle(color: Colors.red),)
              
            ],
          ) ,
          trailing: Icon(Icons.more_vert)
        ),
        ListTile(
          leading: Text('Nifty 50'),
          title:Column(
            children: [
              Text('\u{20B9}${12345.99}'),
              Text('(+12.78)',style: TextStyle(color: Colors.green),)
              
            ],
          ) ,
          trailing: Icon(Icons.more_vert)
        ),
        ListTile(
          leading: Text('Nifty 50'),
          title:Column(
            children: [
              Text('\u{20B9}${12345.99}'),
              Text('(+12.78)',style: TextStyle(color: Colors.red),)
              
            ],
          ) ,
          trailing: Icon(Icons.more_vert)
        ),
      ],
    );
  }
}