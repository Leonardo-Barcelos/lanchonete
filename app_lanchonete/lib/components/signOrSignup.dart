import 'package:flutter/material.dart';

enum AuthMode { Signup, Signin }

class SignOrSignup extends StatefulWidget {
  @override
  _SignOrSignupState createState() => _SignOrSignupState();
}

class _SignOrSignupState extends State<SignOrSignup> {
  Container _myContainerSign = Container(
    width: double.infinity,
    child: RaisedButton(
      onPressed: () {},
      child: Text('Logar-se'),
    ),
  );
  Container _customContainerLoginButton = Container(
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('ou'),
        Container(
          width: double.infinity,
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {},
            child: Text(
              'facebook login',
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
                  labelText: 'E-mail',
                  prefixIcon: Icon(Icons.mail),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              _myContainerSign,
              FlatButton(onPressed: () {}, child: Text('REGISTRAR-SE')),
              _customContainerLoginButton,
            ],
          ),
        ),
      ),
    );
  }
}
