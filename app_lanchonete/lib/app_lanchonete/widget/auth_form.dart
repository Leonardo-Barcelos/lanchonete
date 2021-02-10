import 'package:app_lanchonete/app_lanchonete/model/auth_data.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  final void Function(AuthData authData) onSubmit;
  const AuthForm(this.onSubmit);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final AuthData _authData = AuthData();

  void _submit() {
    bool isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      print('authForm');
      print(_authData.name);
      print(_authData.email);

      widget.onSubmit(_authData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Visibility(
                  visible: _authData.isSignup,
                  child: Column(
                    children: [
                      TextFormField(
                        key: ValueKey('name'),
                        decoration: InputDecoration(labelText: 'Nome'),
                        keyboardType: TextInputType.name,
                        onChanged: (value) => _authData.name = value,
                        validator: (value) {
                          if (value == null || value.trim().length < 4) {
                            return 'Nome deve ter no minimo 4 caracteres';
                          }
                          //*RETORNA NULO SINAL QUE ESTÁ TUDO OK
                          return null;
                        },
                        enableInteractiveSelection: false,
                        enableSuggestions: false,
                        toolbarOptions: ToolbarOptions(
                          copy: false,
                          cut: false,
                          paste: false,
                          selectAll: false,
                        ),
                      ),
                      TextFormField(
                        key: ValueKey('email'),
                        decoration: InputDecoration(labelText: 'E-mail'),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) => _authData.email = value,
                        validator: (value) {
                          if (value == null || !value.contains('@')) {
                            return 'e-mail inválido';
                          }
                          //*RETORNA NULO SINAL QUE ESTÁ TUDO OK
                          return null;
                        },
                        enableInteractiveSelection: false,
                        toolbarOptions: ToolbarOptions(
                          copy: false,
                          cut: false,
                          paste: false,
                          selectAll: false,
                        ),
                      ),
                    ],
                  ),
                  replacement: TextFormField(
                    key: ValueKey('email'),
                    decoration: InputDecoration(labelText: 'E-mail'),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => _authData.email = value,
                    validator: (value) {
                      if (value == null || !value.contains('@')) {
                        return 'e-mail inválido';
                      }
                      //*RETORNA NULO SINAL QUE ESTÁ TUDO OK
                      return null;
                    },
                    enableInteractiveSelection: false,
                    enableSuggestions: false,
                    toolbarOptions: ToolbarOptions(
                      copy: false,
                      cut: false,
                      paste: false,
                      selectAll: false,
                    ),
                  ),
                ),
                TextFormField(
                  key: ValueKey('password'),
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Senha'),
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) => _authData.password = value,
                  validator: (value) {
                    if (value == null || value.trim().length < 7) {
                      return 'Senha deve ter no minimo 7 caracteres';
                    }
                    //*RETORNA NULO SINAL QUE ESTÁ TUDO OK
                    return null;
                  },
                  enableInteractiveSelection: false,
                  enableSuggestions: false,
                  toolbarOptions: ToolbarOptions(
                    copy: false,
                    cut: false,
                    paste: false,
                    selectAll: false,
                  ),
                ),
                SizedBox(height: 12),
                RaisedButton(
                  child: Text(_authData.isLogin ? 'Entrar' : 'Cadastrar'),
                  onPressed: _submit,
                ),
                FlatButton(
                  textColor: Theme.of(context).primaryColor,
                  child: Text(_authData.isLogin
                      ? 'Criar uma nova conta?'
                      : 'Já possui uma conta?'),
                  onPressed: () {
                    setState(() {
                      _authData.toogleMode();
                      _formKey.currentState.reset();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
