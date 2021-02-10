enum AuthMode {
  LOGIN,
  SIGNUP,
}

class AuthData {
  String name;
  String email;
  String password;
  AuthMode _mode = AuthMode.LOGIN;

  AuthData({
    this.name,
    this.email,
    this.password,
  });

  bool get isSignup {
    return _mode == AuthMode.SIGNUP;
  }

  bool get isLogin {
    return _mode == AuthMode.LOGIN;
  }

  void toogleMode() {
    _mode = _mode == AuthMode.LOGIN ? AuthMode.SIGNUP : AuthMode.LOGIN;
  }
}
