import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class InfiniteList extends StatefulWidget {
  @override
   InfiniteListState createState() => new InfiniteListState();
 }

class  InfiniteListState extends State <InfiniteList> {
  final suggestions = <WordPair>[];
  final saved = <WordPair>[];

  ListTile buildRow(WordPair pair){
    return ListTile(
         trailing: Icon(Icons.favorite),
         title: Text(pair.asPascalCase),
         onTap: (){
           setState(() {
             saved.add(pair);
           });
         }
       );
  }
  @override
  Widget build(BuildContext context) {
  //Creamos una nueva page
  void pushSaved(){
    Navigator.push(
      context,
      MaterialPageRoute( builder: (context){
        final title = saved.map<ListTile>((pair)=> ListTile(title: Text(pair.asPascalCase),)).toList();
        return Scaffold(
          appBar: AppBar(title:Text("Guardados")),
          body: ListView( children: title),
        );
      }
      )
    );
  }

   return Scaffold(
     appBar: AppBar(title:Text("Infinite List"),
     actions: <Widget>[
       IconButton(icon: Icon(Icons.list), onPressed: pushSaved)
     ],),
     body: ListView.builder(itemBuilder: (context, i){
       if(i.isOdd) return Divider(); //Poner una linea en caso de que sea impar

       if(i >= suggestions.length){
         suggestions.addAll(generateWordPairs().take(10));
       }

       return buildRow(suggestions[i]);
     }),
   );
  }
}