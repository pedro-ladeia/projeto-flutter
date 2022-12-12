import 'dart:html';
import 'package:flutter/material.dart';
import 'package:login_page/logic.dart';

//tela
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController txtNameCripto = new TextEditingController();
String? response;

//Estado da homepage
class _HomePageState extends State<HomePage> {
  
  setState(() {
    response = '${nameCoin} e ${valueCoin}';
  });

  @override
  void initState() =>
      super.initState(); //Executar função qunaod este widget for inicializado

  @override
  void dispose() =>
      super.dispose(); //Executar função quando este widget for destruído

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Criptoinfo')),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                decoration:
                    InputDecoration(labelText: 'Digite o nome da Criptomoeda'),
                controller: txtNameCripto,
              ),
              Text('Res'),
              ElevatedButton(
                  onPressed: (() => getCoin()),
                  child: Icon(Icons.monetization_on_outlined))
            ],
          ),
        ));
  }
}
