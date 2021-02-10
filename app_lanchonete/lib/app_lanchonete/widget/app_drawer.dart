import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        dragStartBehavior: DragStartBehavior.down,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://img.ibxk.com.br/2019/02/17/17124052466014.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Text('DrawerHeader'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Perfil'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Enviar feedback'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
          ),
        ],
      ),
    );
  }
}
