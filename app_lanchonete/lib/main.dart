import 'package:app_lanchonete/screens/auth_screen.dart';
import 'package:app_lanchonete/screens/signup_screen.dart';
import 'package:app_lanchonete/util/app_constants.dart';
import 'package:app_lanchonete/util/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        AppRoutes.AUTH_HOME: (ctx) => AuthScreen(),
        AppRoutes.AUTH_SIGNUP: (ctx) => SignupScreen(),
      },
    );
  }
}
