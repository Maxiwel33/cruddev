import 'package:cruddev/componentes/user_tile.dart';
import 'package:cruddev/models/users.dart';

import 'package:cruddev/provider/users.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              users.put(User(
                  id: '2',
                  name: 'Luis',
                  email: 'Teste2@teste.com',
                  avatarUrl: ''));

              //remove dados
              //users.remove(users.byIndex(0));
            },
            icon: const Icon(Icons.add),
          ),
        ],
        title: const Text(
          'Lista de Usuarios',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (context, index) => UserTile(
          user: users.byIndex(index),
        ),
      ),
    );
  }
}
