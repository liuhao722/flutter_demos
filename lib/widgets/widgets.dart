import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'simple login',
      home: AppHome(),
    ));

class AppHome extends StatelessWidget {
  GlobalKey<FormState> _loginKey = GlobalKey();
  String _userName;
  String _password;

  void _login() {
    var loginForm = _loginKey.currentState;
    if (loginForm.validate()) {
      loginForm.save();
      print('user name  = $_userName --- password = $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('simple login'),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Center(
          child: Form(
            key: _loginKey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: '请输入登录用户名', hintText: '请输入登录用户'),
                    onSaved: (val) {
                      _userName = val;
                    },
                    onFieldSubmitted: (val) {
                      //提交时候
                    },
                    validator: (val) {
                      if (val.length == 0) return '用户未输入';
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: '请输入密码', hintText: '请输入用户密码'),
                    onSaved: (val) {
                      _password = val;
                    },
                    onFieldSubmitted: (val) {},
                    validator: (val) {
                      if (val.length < 3) return '密码不能小于三个字符';
                      if (val.length > 6)
                        return '密码不能大于6个字符';
                      else
                        return null;
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: SizedBox(
                      width: 400.0,
                      height: 60.0,
                      child: RaisedButton(
                        onPressed: () {
                          _login();
                        },
                        child: Text(
                          '完成',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
