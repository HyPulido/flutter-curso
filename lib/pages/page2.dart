import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms and conditions"),
      ),


      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
           Text("Terms and conditions", 
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
           ),
           SizedBox(height: 25),
           Text("The use of application is need accept all termin and conditions. The use of application is need accept all termin and conditions ",
           style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
           SizedBox(height: 10),
           Text("The use of application is need accept all termin and conditions. The use of application is need accept all termin and conditions ",
           style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
           SizedBox(height: 10),
           Text("The use of application is need accept all termin and conditions. The use of application is need accept all termin and conditions ",
           style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
           SizedBox(height: 10),
           Text("The use of application is need accept all termin and conditions. The use of application is need accept all termin and conditions ",
           style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
           SizedBox(height: 10),
           Text("The use of application is need accept all termin and conditions. The use of application is need accept all termin and conditions ",
           style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
            SizedBox(height: 10),
           RaisedButton(
             padding: EdgeInsets.all(15),
             color: Colors.red,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Acepto todo ", style: TextStyle(fontSize: 20),),
                 Icon(Icons.arrow_forward_ios)
               ],
             ),
             onPressed: ()=>{
              //  Aqui se puede guardar registro si se quiere
              // print(_getListado())
                Navigator.pop(context)


             })
          ],
        ),
      ),
    );
  }
}


// List<Widget> listado( List<dynamic> info ){

//   List<Widget> lista = [];
//   info.forEach((elemento) {
//     lista.add(Text(elemento["name"]));
//   });
//   return lista;

// }


