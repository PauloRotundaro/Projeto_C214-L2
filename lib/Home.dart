import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset("imagens/logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("Saiba qual a melhor opção para o abastecimento do seu carro!"),
            ),
            TextField(),
            TextField(),
            Padding(
              padding: EdgeInsets.only(top: 10)
              ,),
          ],
        ),
      ),
    );
  }
}
