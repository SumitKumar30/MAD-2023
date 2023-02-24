import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   home: Center(child: SafeArea(child: Text("Hello Flutter!!")))
    // );

    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: const Text('Flutter Home'), backgroundColor: Colors.amber),
        body: const Center(child:  Text("Hello World!", style: TextStyle(fontSize: 40)))
      )
    );
  }
}
