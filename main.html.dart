import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter no Project IDX',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ResponsiveLayoutPage(),
    );
  }
}

class ResponsiveLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio da Página Expansiva'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Layout para dispositivos pequenos (celulares)
            return Container(
              color: Colors.lightBlueAccent,
              child: Center(
                child: Text(
                  'Tela Pequena (Celular)',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            );
          } else if (constraints.maxWidth < 1200) {
            // Layout para dispositivos médios (tablets)
            return Container(
              color: Colors.orangeAccent,
              child: Center(
                child: Text(
                  'Tela Média (Tablet)',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            );
          } else {
            // Layout para dispositivos grandes (desktops)
            return Container(
              color: Colors.greenAccent,
              child: Center(
                child: Text(
                  'Tela Grande (Desktop)',
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
