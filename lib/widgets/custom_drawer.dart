import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xffD69ADE),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.person, size: 50, color: Colors.white),
                SizedBox(height: 10),
                Text(
                  "Graziela Paola",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.users),
            title: Text("Lista de Usuários"),
            onTap: () {
              Modular.to
                  .pushNamed("/users"); 
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.box),
            title: Text("Minhas Reservas"),
            onTap: () {
              Modular.to.pushNamed("/reservations");
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.clockRotateLeft),
            title: Text("Histórico de Reservas"),
            onTap: () {
              Modular.to.pushNamed("/historic");
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.book),
            title: Text("Minhas Solicitações"),
            onTap: () {
              Modular.to.pushNamed("/solicitacoes");
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Sair"),
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }
}
