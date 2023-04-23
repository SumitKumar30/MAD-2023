import 'package:flutter/material.dart';
import 'package:third_app/model/user.dart';
import 'package:third_app/widget/user_list.dart';

class UserListScreen extends StatefulWidget {
   final List<User> users;
  final Function(User) onDelete;

  UserListScreen(this.users, this.onDelete);

  // const UserListScreen(List<User> userList, Function(User user) deleteUser, { Key? key }) : super(key: key);

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {

  deleteUser(User user) {
    setState(() {
      widget.onDelete(user);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          'Users',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        child: UserList(widget.users, deleteUser),
        padding: EdgeInsets.all(8),
      ),
    );
  }
}