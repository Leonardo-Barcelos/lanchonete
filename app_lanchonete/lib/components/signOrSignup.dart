import 'package:app_lanchonete/util/app_constants.dart';
import 'package:app_lanchonete/util/app_routes.dart';
import 'package:flutter/material.dart';

class SignOrSignup extends StatefulWidget {
  @override
  _SignOrSignupState createState() => _SignOrSignupState();
}

class _SignOrSignupState extends State<SignOrSignup> {
  Container _myContainerSign = Container(
    width: double.infinity,
    child: RaisedButton(
      onPressed: () {},
      child: Text(AppConstants.APP_ENTER),
    ),
  );
  Container _customContainerLoginButton = Container(
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('ou'),
        Container(
          width: double.infinity,
          child: RaisedButton(
            color: Colors.lightBlue,
            textColor: Colors.white,
            onPressed: () {},
            child: Text(
              'Continuar com o facebook',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 10.0,
      child: Container(
        height: 310.0,
        width: deviceSize.width * 0.75,
        padding: EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: AppConstants.APP_EMAIL,
                  prefixIcon: Icon(Icons.mail),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: AppConstants.APP_PASSWORD,
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              _myContainerSign,
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.AUTH_SIGNUP);
                },
                child: Text(
                  AppConstants.APP_REGISTER,
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.underline,
                    fontSize: 13.0,
                  ),
                ),
              ),
              _customContainerLoginButton,
            ],
          ),
        ),
      ),
    );
  }
}
