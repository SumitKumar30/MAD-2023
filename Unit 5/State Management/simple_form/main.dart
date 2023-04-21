import 'package:flutter/material.dart';
import 'package:fourth_app/home_page.dart';
import 'package:fourth_app/model/user_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UserModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Demo',
        home: MyHomePage(),
      ),
      )
  );
}




