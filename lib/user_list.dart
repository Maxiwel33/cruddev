import 'package:cruddev/componentes/user_tile.dart';
import 'package:cruddev/models/users.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, User> user = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
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
