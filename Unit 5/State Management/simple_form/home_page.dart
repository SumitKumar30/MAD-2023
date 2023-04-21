import 'package:flutter/material.dart';
import 'package:fourth_app/second_page.dart';
import 'package:provider/provider.dart';

import 'model/user_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

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
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              onChanged: (value) => userModel.setName(value),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              onChanged: (value) => userModel.setEmail(value),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
              onChanged: (value) => userModel.setPassword(value),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}