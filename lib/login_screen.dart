import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailField = TextEditingController();
  TextEditingController passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Theme(
                  data:
                      Theme.of(context).copyWith(primaryColor: Colors.black26),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: emailField,
                    decoration: InputDecoration(
                      hintText: 'alex@email.com',
                      hintStyle: TextStyle(color: Colors.black),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Theme(
                  data:
                      Theme.of(context).copyWith(primaryColor: Colors.black26),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    controller: passwordField,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.0,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red[200],
                  ),
                  child: MaterialButton(
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0, right: 15.0),
                      child: Divider(
                        color: Colors.black26,
                        height: 50,
                      ),
                    ),
                  ),
                  Text(
                    "Or",
                    style: TextStyle(color: Colors.black38, fontSize: 10.0),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 15.0, right: 10.0),
                      child: Divider(
                        color: Colors.black26,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.0,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black,
                  ),
                  child: MaterialButton(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Image.asset('assets/images/apple-logo.png',
                                height: 200.0,
                                width: 80.0,
                                alignment: Alignment.topRight),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 60.0),
                          child: Text(
                            'Continue with Apple',
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.0),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.0,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue,
                  ),
                  child: MaterialButton(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 45.0),
                            child: Text(
                              'f',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Continue with facebook',
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.0),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
