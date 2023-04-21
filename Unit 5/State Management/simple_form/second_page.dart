import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/user_model.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${userModel.name}'),
            SizedBox(height: 8),
            Text('Email: ${userModel.email}'),
            SizedBox(height: 8),
            Text('Password: ${userModel.password}'),
          ],
        ),
      ),
    );
  }
}