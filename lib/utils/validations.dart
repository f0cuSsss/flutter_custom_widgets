String? validateLogin(String? login) {
  final _loginExp = RegExp(r'^[A-Za-z]+$');
  return login == null
      ? null
      : login.isEmpty
          ? 'Login is required'
          : !_loginExp.hasMatch(login)
              ? 'Please enter alphabetical characters'
              : null;
}

String? validatePassword(String? password) {
  return password == null
      ? null
      : password.isEmpty
          ? 'Field is required'
          : null;
}
