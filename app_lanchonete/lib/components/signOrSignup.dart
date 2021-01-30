import 'package:flutter/material.dart';

enum AuthMode { Signup, Signin }

class SignOrSignup extends StatefulWidget {
  @override
  _SignOrSignupState createState() => _SignOrSignupState();
}

class _SignOrSignupState extends State<SignOrSignup> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
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
              // FlatButton(onPressed: () {}, child: Text('LOGAR')),
              // RaisedButton(onPressed: () {}, child: Text('REGISTRO')),
              _myContainerSignOrSignUp,
              _customContainerLoginButton,
            ],
          ),
        ),
      ),
    );
  }

  Container _myContainerSignOrSignUp = Container(
    width: double.infinity,
    child: Row(
      children: [
        FlatButton(onPressed: () {}, child: Text('LOGAR')),
        Spacer(),
        RaisedButton(onPressed: () {}, child: Text('REGISTRAR-SE')),
      ],
    ),
  );
  Container _customContainerLoginButton = Container(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('ou'),
        RaisedButton(onPressed: () {}, child: Text('facebook login')),
      ],
    ),
  );
}
