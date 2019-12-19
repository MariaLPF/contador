import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final labelStyle = TextStyle(fontSize: 24.0, color:Color.fromARGB(255, 0, 0, 150), fontStyle:FontStyle.italic );
  final counterStyle = TextStyle(fontSize: 32.0, color:Color.fromARGB(255, 150, 0, 0));
  final count = 10;

  @override
  Widget build(BuildContext context) {
       
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
        elevation: 3.0,
        backgroundColor: Color.fromARGB(255, 100, 0, 200) ,
      ),
      body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, 
              mainAxisSize: MainAxisSize.min, 
              children: <Widget>[
                Text('Numero de clicks', style: labelStyle),
                Text('$count', style: counterStyle)],
            )
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Incrementar contador',
        onPressed: (){
          print('Hola mundo');
        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}