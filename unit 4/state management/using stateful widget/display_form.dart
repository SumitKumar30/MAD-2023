import 'package:flutter/material.dart';

import 'model/user.dart';

class DisplayForm extends StatelessWidget {
  final User user;
  const DisplayForm({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Form'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Name: ${user.name}', style: const TextStyle(fontSize: 20),),
            Text('Email: ${user.email}', style: TextStyle(fontSize: 20)),
            Text('Message: ${user.message}', style: TextStyle(fontSize: 20)),
            Text('Password: ${user.password}', style: TextStyle(fontSize: 20)),
            Text('Confirm Password: ${user.confirmPassword}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
