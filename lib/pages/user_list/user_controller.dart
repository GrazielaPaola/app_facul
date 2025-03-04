import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class UserController extends ChangeNotifier {
  final List<UserModel> _users = [
    UserModel(name: "João Silva", email: "joao@email.com"),
    UserModel(name: "Maria Souza", email: "maria@email.com"),
    UserModel(name: "Carlos Oliveira", email: "carlos@email.com"),
    UserModel(name: "Ana Santos", email: "ana@email.com"),
  ];

  List<UserModel> get users => _users;
}
