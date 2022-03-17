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
    final bool alreadySaved = saved.contains(pair);
    return ListTile(
         trailing: Icon(
           alreadySaved ? //Si no esta guardado
           Icons.favorite : Icons.favorite_border, color: Colors.redAccent,
           ),
         title: Text(pair.asPascalCase),
         onTap: (){
           setState(() {
             if(alreadySaved){
                saved.remove(pair);
             }else{
                saved.add(pair);
             }
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