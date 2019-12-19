import 'package:flutter/material.dart';

class CountPage extends StatefulWidget{
  @override
  createState() => _CountPageState();
  /*State<StatefulWidget> createState() {
    
    return _CountPageState();
  }*/

}

//Guion bajo para indicar que es privada y State 
//para indicar que es un estado
class _CountPageState extends State<CountPage>{

  final _labelStyle = TextStyle(fontSize: 24.0, color:Color.fromARGB(255, 0, 0, 150), fontStyle:FontStyle.italic );
  final _counterStyle = TextStyle(fontSize: 32.0, color:Color.fromARGB(255, 150, 0, 0));
  int _count = 0;

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
                Text('Numero de clicks', style: _labelStyle),
                Text('$_count', style: _counterStyle)],
            )
        ),
      floatingActionButton: _createButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );
      
    
  }

  Widget _createResetButton(){
    return FloatingActionButton(
                     child: Icon(Icons.exposure_zero),
                     tooltip: 'Resetear contador',
                     onPressed: _reset,
                  );
  }

  void _reset(){
      setState(() => _count=0 );
  }

  Widget _createLessButton(){
    return FloatingActionButton(
                     child: Icon(Icons.remove),
                     tooltip: 'Decrementar contador',
                     onPressed: _less,
                  );
  }

  void _less(){
    setState(() {
                      if(_count>0){
                        _count--; 
                      }
                    });
  }

  Widget _createAddButton(){
    return FloatingActionButton(
                    child: Icon(Icons.add),
                    tooltip: 'Incrementar contador',
                    onPressed: _add, // referencia a la funcion, por eso no lleva ()
                  );
  }

  void _add(){
    setState(() => _count++);
  }

  Widget _createButtons(){
    return Row(
      children: <Widget>[
        SizedBox(width: 30,),
        _createResetButton(),
        Expanded(child: SizedBox(),),
        _createLessButton(),
        SizedBox(width: 5,),
        _createAddButton(),
      ],
    );
  }

/**Ejemplo de espaciado igual entre botones 
  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _createResetButton(),
        _createLessButton(),
        _createAddButton(),
      ],
    );
  }*/

  /*Ejemplo de espaciado igual entre botones
  Widget _createButtons(){
    return Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: _createResetButton(),
          ),
          Expanded(
            flex: 1,
            child: _createLessButton(),
          ),  
          Expanded(
            flex: 1,
            child: _createAddButton(),
          ),
        ],
      );
  }*/
  

}

