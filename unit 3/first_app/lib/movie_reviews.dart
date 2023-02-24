import 'package:first_app/menu_drawer.dart';
import 'package:flutter/material.dart';

class MovieReview extends StatelessWidget {
  const MovieReview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Moview Reviews'),),
      drawer: const MenuDrawer(),
      body: const Center(child: FlutterLogo()),
    );
  }
}