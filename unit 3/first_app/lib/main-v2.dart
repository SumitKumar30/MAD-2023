import 'dart:ui';

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
        home: Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text('Flutter Home'),
        backgroundColor: Colors.amber,
        actions: [
          Icon(Icons.phone),
          SizedBox(
            width: 30,
          ),
          Icon(Icons.message),
          SizedBox(
            width: 30,
          )
        ],
      ),
      //body: const Center(child:  Text("Hello World!", style: TextStyle(fontSize: 40)))
      //body: Image.network('https://i.pinimg.com/originals/40/f0/0b/40f00b9ed42dd0682a98843d2762d699.gif'),
      body: Image.asset('images/batman.jpg'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, child: Text('+', style: TextStyle(color: Colors.black, fontSize: 30), ), backgroundColor: Colors.amber,
      ),
    ));
  }
}
