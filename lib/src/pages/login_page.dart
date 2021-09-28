import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lottery/src/providers/login_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            color: Colors.blue[900],
          ),
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 36.0,
                      horizontal: 24.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Lottery',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  )),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                          key: loginProvider.formLoginKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Username',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue[900]),
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  loginProvider.username = value;
                                },
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.person_outline,
                                    size: 35,
                                    color: Colors.blue[900],
                                  ),
                                  hintText: 'Your Username',
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Text('Password',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue[900])),
                              TextFormField(
                                onChanged: (value) {
                                  loginProvider.password = value;
                                },
                                validator: (value) {
                                  if (value.length > 8) {
                                    return 'Password must be 8 characters long';
                                  }
                                  return null;
                                },
                                obscureText: loginProvider.visiblePassword,
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(fontSize: 16),
                                  suffixIcon: IconButton(
                                    icon: loginProvider.visiblePassword
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility),
                                    onPressed: () {
                                      loginProvider.visibilityPassword();
                                    },
                                  ),
                                  icon: Icon(
                                    Icons.lock_outline,
                                    size: 35,
                                    color: Colors.blue[900],
                                  ),
                                  hintText: 'Your Password',
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text('Forgot Password?',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue[900],
                                  )),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: double.infinity,
                                child: RaisedButton(
                                  padding: EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  onPressed: () {
                                    if (loginProvider.validateForm()) {
                                      //TODO: Mandar peticion al backend
                                      print('Puede entrar al home page');
                                    } else {
                                      //
                                      print('Faltan campos por validar');
                                    }
                                  },
                                  color: Colors.blue[900],
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                  ),
                                ),
                              ),
                            ],
                          ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
