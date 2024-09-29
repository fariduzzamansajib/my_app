import 'package:flutter/material.dart';
import 'package:my_app/form.dart';
import 'package:my_app/helpers/k_log.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _password = TextEditingController();

  String userName = 'sajib';
  String password = 'sajib123';

  void login() {
    String enterUserName = _userName.text;
    String enterPassword = _password.text;

    if (enterUserName == userName) {
      if (enterPassword == password) {
        kLog("Login Successful");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => float()));
      } else {
        kLog('Incorrect Password');
        _showDialog('Incorrect Password');
      }
    } else {
      kLog("Incoorect UserName");
      _showDialog('Incorrect Username');
    }
  }

  void _showDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Login Error'),
          content: Text(message),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _userName,
              decoration: InputDecoration(
                  labelText: 'Username', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _password,
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
