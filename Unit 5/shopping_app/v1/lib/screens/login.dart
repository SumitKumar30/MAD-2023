import 'package:flutter/material.dart';
import 'package:shopping_app/screens/register.dart';
import 'package:shopping_app/utils/constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              Constants.LOGIN_IMAGE),
          Container(
            margin: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter your username",
                  prefixIcon: Icon(Icons.login),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          // SizedBox(height: 16),
          Container(
            margin: EdgeInsets.all(16),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: EdgeInsets.all(16),
                child: ElevatedButton(onPressed: () {}, child: Text('Login'))),
            Container(
                margin: EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Register()));
                       Navigator.pushNamed(context, ConstantRoutes.REGISTER_ROUTE);
                    },
                    child: Text('Register')))
          ]),
        ],
      )),
    );
  }
}
