import 'package:flutter/material.dart';

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
 bool _subscrito=false;

class _InicioState extends State<Inicio> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
        appBar: AppBar(
          title: Text("Alert Dialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Color(0xffff0000),
                textColor: Colors.white,

                child: Text(_subscrito?"Dejar de seguir":"Suscribirme", 
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                    ), 
                ),

                onPressed: (){
                  String msg=_subscrito?"¿Estas seguro que quieres dejar de seguir este canal?":"¿Estas seguro que quieres suscribirte a este canal?";
                    _showAlert(context, _subscrito?"Cancelar subcripción":"Suscribirse", msg);      
                },               
              ),
              SizedBox(height: 50,),
              Text(
                _subscrito?"Subscrito":"No subscrito",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        )
    );

  }

void _showAlert(BuildContext context, String title, String message){
  showDialog(
    context: context,
    barrierDismissible: false, //Para no se cierre al darle click afuera
    builder:(_) => new AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          child: Text(("Cancelar")),
          onPressed: (){
            print("Cancelar");
            Navigator.pop(context);
          }, 
        ),
        TextButton(
          child: Text(("Aceptar")),
          onPressed: (){
            print("Si, acepto");
             setState(() {
              _subscrito=!_subscrito;
            });
            Navigator.pop(context);
          }, 
        ),
      ],
    )
    );
}

}

