import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _logo(),
            _username(),
            _password(),
            _loginButton(context),
            _forgot_pass(),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      padding: const EdgeInsets.only(bottom: 50),
      child: const FlutterLogo(
        size: 30,
      ),
    );
  }

  Widget _username() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: TextFormField(
        enabled: true,
        decoration: const InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.blue),
            )),
      ),
    );
  }

  Widget _password() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        decoration: const InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.blue),
            )),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Login'),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _forgot_pass() {
    return TextButton(onPressed: () {}, child: const Text('Forgot password ?'));
  }
}
