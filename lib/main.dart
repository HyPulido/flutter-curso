import 'package:flutter/material.dart';
import 'package:flutter_curso/pages/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(primarySwatch: Colors.red),
      // theme: ThemeData(
      //   primaryColor: Colors.red,
      //   visualDensity: VisualDensity.adaptivePlatformDensity
      // ),
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Home"),
              RaisedButton(
                child: Text("Ir a la otra pagina"),
                onPressed: ()=>{
                  // Llamar otra pagina
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>page2())
                  ),
                }
              )
            ],
          ),
        )
    );

  }
}

