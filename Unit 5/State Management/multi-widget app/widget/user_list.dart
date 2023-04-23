import 'package:flutter/material.dart';
import 'package:third_app/model/user.dart';

class UserList extends StatelessWidget {
 final List<User> users;
  final Function(User) onDelete;

  UserList(this.users, this.onDelete);

  // const UserList({ Key? key, required this.users, required this.onDelete }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Card(
        elevation: 8,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: ${users[index].name}',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'City: ${users[index].city}',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => onDelete(users[index]),
              )
            ],
          ),
          ),
      ),
      itemCount: users.length,
      );
  }
}