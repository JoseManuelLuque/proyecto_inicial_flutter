import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Inicial Flutter PMDM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 247, 86)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'App Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool cambiar = false;
  String texto = "ABRIR 🔑";

  void toggleCambiar() {
    setState(() {
      cambiar = !cambiar;
      texto = cambiar ? "CERRAR 🔒" : "ABRIR 🔑";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            cambiar 
              ? Image.asset('assets/images/abierto.jpg', width: 500, height: 500)
              : Image.asset('assets/images/cerrado.jpg', width: 500, height: 500),
            OutlinedButton(
              onPressed: () { 
                toggleCambiar();
              },
              child: Text(texto),
            )
          ],
        ),
      ),
    );
  }
}
