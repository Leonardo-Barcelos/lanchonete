import 'package:app_lanchonete/util/app_constants.dart';
import 'package:app_lanchonete/util/app_validators.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _visiblePassword = false;
  bool _blankField = true;
  GlobalKey<FormState> _formRegister = GlobalKey();
  final Map<String, String> _formData = {
    'name': '',
    'email': '',
    'password': '',
    'confirmPass': '',
    'cellphone': '',
    'cep': '',
  };

  void _submit() {
    _formRegister.currentState.validate();
  }

  @override
  Widget build(BuildContext context) {
    Container _signupButon = new Container(
      width: double.infinity,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Colors.lightGreen,
        onPressed: !_blankField ? () => _submit() : null,
        child: Text('enviar', style: TextStyle(color: Colors.white)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Tela de cadastro'),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Form(
              key: _formRegister,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) =>
                        AppValidators.validadeMinimumLength(4, value),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      labelText: AppConstants.APP_PERSON_NAME,
                    ),
                    onSaved: (value) => _formData['name'] = value,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline),
                      labelText: AppConstants.APP_EMAIL,
                    ),
                    onSaved: (value) => _formData['email'] = value,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_visiblePassword,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      labelText: AppConstants.APP_PASSWORD,
                      suffixIcon: !_blankField
                          ? IconButton(
                              icon: !_visiblePassword
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _visiblePassword = !_visiblePassword;
                                });
                              },
                            )
                          : null,
                    ),
                    onSaved: (value) => _formData['password'] = value,
                    onChanged: (value) {
                      if (value.trim().length > 0) {
                        setState(() {
                          _blankField = false;
                        });
                      } else {
                        setState(() {
                          _blankField = true;
                        });
                      }
                    },
                  ),
                  Divider(),
                  _signupButon,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
