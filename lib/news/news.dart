import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/news/mynews.dart';
import 'package:flutter_application_1/news/stocknews.dart';
import 'package:flutter_application_1/news/tbnews.dart';
import 'package:flutter_application_1/news/topnews.dart';
class News extends StatefulWidget {
  const News({ Key? key }) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
            iconTheme: IconThemeData(
    color: Colors.black
  ),
        title: Text('News',style: TextStyle(color: Colors.black)),
        bottom:TabBar(
          indicatorColor: appcolor,
          labelColor: Colors.black,
          tabs:[
            Tab(text: 'Top News'),
           Tab(text: 'TB News'),
           Tab(text: 'Stock News'),
           Tab(text: 'My News',)
          ]
        ),
        ),
      body: TabBarView(
          children:[
         TopNews(),
         TbNews(),
         StockNews(),
         MyNews()
          ]
          ),
        

    )
    );
  }
}