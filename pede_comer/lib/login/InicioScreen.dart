import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pede_comer/shared/cores.dart';


class InicioScreen extends StatefulWidget {
  @override
  _InicioScreenState createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.secundaria,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pede->Come"),
        backgroundColor: Cores.primaria,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Icon(
                  Icons.fastfood,
                  size: 200,
                  color: Cores.primaria,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(onPressed: (){

                },
                  color: Cores.primaria,
                  child: Text('CADASTRAR', style:TextStyle(color: Colors.white,fontSize: 35)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(onPressed: (){

                },
                  color: Cores.primaria,
                  child: Text('LOGAR', style:TextStyle(color: Colors.white,fontSize: 35)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
