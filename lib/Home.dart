import 'package:AlcoolOuGasolina/controller.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Controller _controller = Controller();

  String _textoResultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _controller.key,
        child: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset("imagens/logo.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Saiba qual a melhor opção para o abastecimento do seu carro!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(labelText: "Preço Alcool, ex: 1.59"),
                  style: TextStyle(fontSize: 22),
                  controller: _controller.controllerAlcool,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Preencha o campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(labelText: "Preço Gasolina, ex: 3.59"),
                  style: TextStyle(fontSize: 22),
                  controller: _controller.controllerGasolina,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Preencha o campo";
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      _controller.calcular();
                      if (_controller.result >= 0.7) {
                        setState(() {
                          _textoResultado = "Melhor abastecer com Gasolina";
                        });
                      } else {
                        setState(() {
                          _textoResultado = "Melhor abastecer com Alcool";
                        });
                      }
                    },
                    child: Text(
                      "Calcular",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    _textoResultado,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
