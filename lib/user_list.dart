import 'package:cruddev/componentes/user_tile.dart';
import 'package:cruddev/data/dummy_user.dart';
import 'package:cruddev/models/users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, User> user = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        title: const Text(
          'Lista de Usuarios',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        itemCount: user.length,
        itemBuilder: (context, index) => UserTile(
          user: user.values.elementAt(index),
        ),
      ),
    );
  }
}
