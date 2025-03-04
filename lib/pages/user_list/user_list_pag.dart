import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/user_card.dart';
import 'user_controller.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Provider.of<UserController>(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xffD69ADE),
        title: Text("Lista de usuários", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: userController.users.length,
        itemBuilder: (context, index) {
          final user = userController.users[index];
          return UserCard(
            user: user,
            onTap: () {
              
            },
          );
        },
      ),
    );
  }
}
