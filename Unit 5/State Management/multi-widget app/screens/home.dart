import 'package:flutter/material.dart';
import 'package:third_app/model/user.dart';
import 'package:third_app/screens/user_list_screen.dart';
import 'package:third_app/widget/custom.input.dart';
import 'package:third_app/widget/custom_button.dart';
import 'package:third_app/widget/user_list.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _name;
  String? _city;
  List<User> userList = [];

  addUser(User user) {
    setState(() {
      userList.add(user);
    });
  }

  deleteUser(User user) {
    setState(() {
      userList.removeWhere((_user) => _user.name == user.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          "Provider Demo",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomInput(labelText: 'Name', onSaved: (String? value){
                  _name = value;
              }),
              SizedBox(height: 16),
              CustomInput(
                labelText: 'City',
                onSaved: (String? value) {
                  _city = value;
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    text: 'Add',
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) return;

                      _formKey.currentState!.save();

                      addUser(User(_name!, _city!));
                    }, color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(width: 8),
                  CustomButton(
                    text: 'List',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              UserListScreen(userList, deleteUser),
                        ),
                      );
                    }, color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
               SizedBox(height: 20),
               UserList(userList, deleteUser),
            ],
          )
          ),
      ),
    );
  }
}
