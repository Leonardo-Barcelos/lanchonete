import 'package:app_lanchonete/util/app_constants.dart';
import 'package:app_lanchonete/util/app_routes.dart';
import 'package:flutter/material.dart';

class SignOrSignup extends StatefulWidget {
  @override
  _SignOrSignupState createState() => _SignOrSignupState();
}

class _SignOrSignupState extends State<SignOrSignup> {
  GlobalKey<FormState> _form = GlobalKey();
  bool _loginValid = false;
  bool _passValid = false;
  bool _isLoading = false;
  final Map<String, String> _formLogin = {
    'email': '',
    'password': '',
  };
  void _submitLogin() {
    _form.currentState.validate();
    setState(() {
      _isLoading = true;
    });
  }

  Container _customContainerFacebookLoginButton = Container(
    width: double.infinity,
    child: Column(
      children: [
        Container(
          width: double.infinity,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Colors.lightBlue,
            textColor: Colors.white,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  AppConstants.APP_FACEBOOK,
                  height: 25.0,
                  width: 25.0,
                ),
                Text(
                  AppConstants.APP_CONTINUE_WITH_FACEBOOK,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    bool _isvalid() {
      if (_loginValid == true && _passValid == true) {
        return true;
      } else {
        return false;
      }
    }

    var _loadingContainer = Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          Text('Carregando...'),
        ],
      ),
    );

    Container _myContainerButtonSign = Container(
      width: double.infinity,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Colors.lightGreen,
        onPressed: _isvalid() ? _submitLogin : null,
        child: Text(
          AppConstants.APP_ENTER,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
    FlatButton _myButtonRegister = FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
    );
    TextFormField _myEmailFormField = TextFormField(
      decoration: InputDecoration(
        labelText: AppConstants.APP_EMAIL,
        prefixIcon: Icon(Icons.mail),
      ),
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value != null && value.trim().isNotEmpty) {
          setState(() {
            _loginValid = true;
          });
        } else {
          setState(() {
            _loginValid = false;
          });
        }
      },
      onSaved: (value) => _formLogin['email'] = value,
    );
    TextFormField _myPasswordFormField = TextFormField(
      decoration: InputDecoration(
        labelText: AppConstants.APP_PASSWORD,
        prefixIcon: Icon(Icons.lock),
      ),
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (value) => _formLogin['password'] = value,
      onChanged: (value) {
        if (value != null && value.trim().isNotEmpty) {
          setState(() {
            _passValid = true;
          });
        } else {
          setState(() {
            _passValid = false;
          });
        }
      },
    );
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 10.0,
      child: Container(
        height: 340.0,
        width: deviceSize.width * 0.75,
        padding: EdgeInsets.all(15.0),
        child: Form(
          key: _form,
          child: _isLoading
              ? _loadingContainer
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _myEmailFormField,
                    _myPasswordFormField,
                    _myContainerButtonSign,
                    _myButtonRegister,
                    _customContainerFacebookLoginButton,
                  ],
                ),
        ),
      ),
    );
  }
}
