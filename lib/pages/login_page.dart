import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './register_page.dart';
import './branches_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _passwordFieldController = TextEditingController();

  final _emailFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "OU Notes",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                height: 85,
              ),
              Card(
                margin: EdgeInsets.all(30),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          controller: _emailFieldController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Enter Email",
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          controller: _passwordFieldController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BranchesPage(),
                            ),
                          );
                        },
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        color: Colors.black,
                        textColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text("(or)"),
                    Container(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        color: Colors.white,
                        textColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
