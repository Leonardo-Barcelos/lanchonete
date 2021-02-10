import 'package:app_lanchonete/app_lanchonete/model/auth_data.dart';
import 'package:app_lanchonete/app_lanchonete/widget/auth_form.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final Text _myTitle = Text(
    'Lanchonete',
    style: TextStyle(
      fontSize: 30.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: Colors.deepOrangeAccent,
    ),
  );
  final Container _myLogoImage = Container(
    height: 250.0,
    padding: EdgeInsets.all(5.0),
    child: Image.asset('assets/images/logo-lanchonete.png'),
  );
  final Container _myBackground = Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color.fromRGBO(215, 117, 255, 0.5),
          Color.fromRGBO(215, 188, 117, 0.9),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: null,
  );

  void _handleSubmit(AuthData authData) {
    print('authPage');
    print(authData.name);
    print(authData.email);
  }

  //AuthForm(_handleSubmit)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            _myBackground,
            Center(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _myLogoImage,
                      _myTitle,
                      AuthForm(_handleSubmit),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
