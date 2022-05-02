import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Persona> _personas=[
    Persona("Holman", "Pulido", "3135855289"),
    Persona("Yesid", "Castañeda", "3135755289"),   
    Persona("Marcos", "Figueroa", "3135855289"),
    Persona("Juan", "Peña", "3135755289"),    
    Persona("Maria", "Pulido", "3135855289"),
    Persona("Jose", "Garcia", "3135755289"),    
    // Persona("Holman", "Pulido", "3135855289"),
    // Persona("Yesid", "Castañeda", "3135755289"),   
    // Persona("Marcos", "Figueroa", "3135855289"),
    // Persona("Juan", "Peña", "3135755289"),    
    // Persona("Maria", "Pulido", "3135855289"),
    // Persona("Jose", "Garcia", "3135755289"),   
    // Persona("Holman", "Pulido", "3135855289"),
    // Persona("Yesid", "Castañeda", "3135755289"),   
    // Persona("Marcos", "Figueroa", "3135855289"),
    // Persona("Juan", "Peña", "3135755289"),    
    // Persona("Maria", "Pulido", "3135855289"),
    // Persona("Jose", "Garcia", "3135755289"),    
    // Persona("Holman", "Pulido", "3135855289"),
    // Persona("Yesid", "Castañeda", "3135755289"),   
    // Persona("Marcos", "Figueroa", "3135855289"),
    // Persona("Juan", "Peña", "3135755289"),    
    // Persona("Maria", "Pulido", "3135855289"),
    // Persona("Jose", "Garcia", "3135755289"),   
    // Persona("Holman", "Pulido", "3135855289"),
    // Persona("Yesid", "Castañeda", "3135755289"),   
    // Persona("Marcos", "Figueroa", "3135855289"),
    // Persona("Juan", "Peña", "3135755289"),    
    // Persona("Maria", "Pulido", "3135855289"),
    // Persona("Jose", "Garcia", "3135755289"),    
    // Persona("Holman", "Pulido", "3135855289"),
    // Persona("Yesid", "Castañeda", "3135755289"),   
    // Persona("Marcos", "Figueroa", "3135855289"),
    // Persona("Juan", "Peña", "3135755289"),    
    // Persona("Maria", "Pulido", "3135855289"),
    // Persona("Jose", "Garcia", "3135755289"),   
  ];  

  @override
  Widget build(BuildContext context) {
    BuildContext ctx=context;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar 2'),
        ),
        body: ListView.builder(
          itemCount: _personas.length,
          itemBuilder: (context, index) {
            // return Text(_personas[index].first_name);
            return ListTile(
               onLongPress: (){
                // print(_personas[index].phone);
                this._deletePerson(context, _personas[index]);
              },
              onTap: (){
                print(_personas[index].first_name+" "+_personas[index].last_name);
              },
              title: Text(_personas[index].first_name+" "+_personas[index].last_name),
              subtitle: Text(_personas[index].phone),
              leading: CircleAvatar(
                child:Text(_personas[index].first_name.substring(0,1))
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          },
        )
      )
    );
  }

  void _deletePerson(context, Persona person){
    showDialog(
      context: context,
      builder: ( _ ) => AlertDialog(
        title: Text("Eliminar contacto"),
        content: Text("¿Estas seguro de eliminar a "+person.first_name +" "+person.last_name+"?"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
           
          }, child: Text("Cancelar")),
          TextButton(onPressed: (){
            print(person.first_name);
            
            this.setState(() {
              this._personas.remove(person);
            });
            Navigator.pop(context);
          }, child: Text("Borrar", style: TextStyle(color: Colors.red),)),
        ],
      ) 
    );

  }
}


class Persona{
  String first_name="";
  String last_name="";
  String phone="";

  Persona(String first_name, String last_name, String phone){
    this.first_name=first_name;
    this.last_name=last_name;
    this.phone=phone;
  }

}