import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _loginKey = GlobalKey();
  String _userName;
  String _password;

  void login() {
    var _loginForm = _loginKey.currentState;
    if (_loginForm.validate()) {
      _loginForm.save();
      print('name:$_userName , $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Form(
                  key: _loginKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: '请输入用户名'),
                        onSaved: (value) {
                          print('$value');
                          _userName = value;
                        },
                        onFieldSubmitted: (value) {
                          print('onFieldSubmitted:$value');
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: '请输入密码'),
                        //密码
                        obscureText: true,
                        onSaved: (value) {
                          print('$value');
                          _password = value;
                        },
                        validator: (value) {
                          return value.length < 6 ? '密码长度不够6位' : null;
                        },
                        onFieldSubmitted: (value) {
                          print('onFieldSubmitted:$value');
                        },
                      ),
                      Container(
                        width: 400,
                        height: 40,
                        child: RaisedButton(
                          onPressed: () {
                            login();
                          },
                          child: Text('登录'),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
