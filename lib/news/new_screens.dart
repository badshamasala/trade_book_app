
import 'package:flutter/material.dart';
import 'package:flutter_application_1/news/modal.dart';
class NewScreens extends StatelessWidget {
  final News news;
  NewScreens(this.news);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(news.title,style: TextStyle(color: Colors.black),)
      ),
      body: Padding(
        padding:EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(news.imgurl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(news.year.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(news.des,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),),
            )

        ],
        ),
      ),
    );
  }
}