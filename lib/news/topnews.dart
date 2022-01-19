import 'package:flutter/material.dart';
import 'package:flutter_application_1/news/modal.dart';
import 'package:flutter_application_1/news/new_screens.dart';
class TopNews extends StatefulWidget {
  const TopNews({ Key? key }) : super(key: key);

  @override
  _TopNewsState createState() => _TopNewsState();
}

class _TopNewsState extends State<TopNews> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsList.length,
      itemBuilder: (context,index){
        News news=newsList[index];
        return Card(
          child:ListTile(
            title: Text(news.title),
            subtitle: Text(news.year.toString()),
            leading: Image.network(news.imgurl),
            trailing: Icon(Icons.turned_in_not),
            onTap:(){ Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>   NewScreens(news)));} ,
          )
        );
      },
      
    );
  }
}