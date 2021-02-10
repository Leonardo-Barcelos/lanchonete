import 'package:flutter/material.dart';
import 'package:app_lanchonete/app_lanchonete/pages/auth_page.dart';
import 'package:app_lanchonete/app_lanchonete/utils/app_routes.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        AppRoutes.AUTH_PAGE: (ctx) => AuthPage(),
      },
    );
  }
}
