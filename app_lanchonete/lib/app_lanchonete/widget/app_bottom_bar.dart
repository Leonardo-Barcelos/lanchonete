import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  @override
  _AppBottomBarState createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Produtos'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_list),
          title: Text('Pedidos'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text('Carrinho'),
        ),
      ],
      onTap: _onItemTapped,
      selectedItemColor: Colors.amber[800],
      currentIndex: _selectedIndex,
    );
  }
}
