import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_curso/Models/Gif.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

    Future<List<Gif>> ? _listGifs;

  // Future<List<Gif>> _listGifs;

   Future<List<Gif>> _getGifs() async{

    final response= await http.get(Uri.parse(("https://api.giphy.com/v1/gifs/trending?api_key=epDxUY1WEEUpFqmyTprah11G6Jw7VyvL&limit=80&rating=g")));

    List<Gif> gifs=[];

    if(response.statusCode==200){
      // print(response.body);
      String body= utf8.decode(response.bodyBytes);
      final jsonData=jsonDecode(body);
      // print(jsonData['data'][0]['type']);
      // final jsonData2=jsonData['data'];
      for (var item in jsonData['data']) {

// gifs.add(Gif('name', 'url'));

        gifs.add(Gif(item['title'], item['images']['downsized']['url']));

        // print(item['type']);
        // print(item);
        // print('\n\n\n****************************************************\n\n\n');
      }

      return gifs;

      

    }else{
      throw Exception("Fallo la conexión");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listGifs= _getGifs();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: FutureBuilder(
          future: _listGifs,
          builder: (context, snapshot) {
            if(snapshot.hasData){
              // print(snapshot.data);
              // return Text("Hola");
              return GridView.count(
                crossAxisCount: 3,
                children: _listViewGifs(snapshot.data),
              );
              
            }else{
              print(snapshot.error);
              // return Text("Error");
            }
            // return "Hola";
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _listViewGifs(data){
    List<Widget> gifs=[];

    for (var gif in data) {
      gifs.add(Card(child: Column(
        children: [
          Expanded(child: Image.network(gif.url, fit: BoxFit.fill)) ,
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //      child: Text(gif.name),
          // ),  
        ] 
      )));
    }
    return gifs;
  }
}

