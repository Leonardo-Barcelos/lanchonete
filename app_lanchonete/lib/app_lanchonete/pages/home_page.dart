import 'package:flutter/material.dart';
import 'package:app_lanchonete/app_lanchonete/widget/app_bottom_bar.dart';
import 'package:app_lanchonete/app_lanchonete/widget/app_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME_PAGE'),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: Container(),
      bottomNavigationBar: AppBottomBar(),
    );
  }
}
