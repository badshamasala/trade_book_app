import 'package:flutter/material.dart';
class Banksearch extends SearchDelegate<String>{
final banks=[
  'HDFC',
  'ICICI',
  'AXIS',
  'BARODA',
];
final recentBanks=[
  'HDFC',
  'ICICI',
  'AXIS',
];
@override
List<Widget>buildActions(BuildContext context)=>[
  IconButton(
    onPressed: (){}, 
    icon: Icon(Icons.clear)
    )
];
@override
Widget buildLeading(BuildContext context)=>IconButton(
    onPressed: (){}, 
    icon: Icon(Icons.arrow_back)
    );
@override
Widget buildResults(BuildContext context)=>Container();
@override
Widget buildSuggestions(BuildContext context){
      final suggestions=recentBanks;
      return buildSuggestionsSuccess(suggestions);
}
Widget buildSuggestionsSuccess(List<String>suggestions)=>ListView.builder(
  itemCount: suggestions.length,
  itemBuilder: (context,index){
    final suggestion=suggestions[index];
    return ListTile(
       leading: Icon(Icons.comment_bank),
       title: Text(suggestion),
    );
  }
  );
}