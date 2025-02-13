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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 245, 128, 39)),
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

  void toggleCambiar() {
    setState(() {
      cambiar = !cambiar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            cambiar 
              ? Image.asset('images/mono2.jpg', width: 500, height: 500)
              : Image.asset('images/mono1.png', width: 500, height: 500),
            OutlinedButton(
              onPressed: () { 
                toggleCambiar();
              },
              child: Text('MAGIA'),
            )
          ],
        ),
      ),
    );
  }
}
