import 'package:app_lanchonete/components/signOrSignup.dart';
import 'package:app_lanchonete/util/app_constants.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
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
                      const SizedBox(height: 45.0),
                      _myLogoImage,
                      _myTitle,
                      SignOrSignup(),
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

  Container _myBackground = Container(
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
  Container _myLogoImage = Container(
    height: 250.0,
    padding: EdgeInsets.all(5.0),
    child: Image.asset(AppConstants.APP_LOGO),
  );
  Text _myTitle = Text(
    AppConstants.APP_NAME,
    style: TextStyle(
      fontSize: 30.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: Colors.deepOrangeAccent,
    ),
  );
}
