import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //sets the state for password visibility
  var hidePass = true;
  void toggleVisibility(){
    setState(() {hidePass = !hidePass;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 500.0,
              maxWidth: 300.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Logo
                Container(
                  // TODO: add the image logo instead of text
                  child: Text(
                    "LOGO",
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ),
                //Text boxes
                Container(
                  //padding: EdgeInsets.fromLTRB(20.0, 32.0, 20.0, 0.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "EMAIL",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).hintColor
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).accentColor)
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Theme.of(context).primaryColor
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "PASSWORD",
                          labelStyle: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor
                            )
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Theme.of(context).primaryColor
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              hidePass ? Icons.visibility_off : Icons.visibility,
                              color: Theme.of(context).primaryColor,
                            ),
                            onPressed: () => toggleVisibility()
                          )
                        ),
                        obscureText: hidePass,
                        enableSuggestions: false,
                        autocorrect: false,
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        alignment: Alignment(1.0, 0.0),
                        padding: EdgeInsets.only(top: 12.0),
                        child: InkWell(
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                              decoration: TextDecoration.underline
                            )
                          )
                        )
                      )
                    ]
                  )
                ),
                SizedBox(height: 32.0),
                //buttons
                Container(
                  //padding: EdgeInsets.fromLTRB(20, top, right, bottom)
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.blue[200],
                          color: Colors.blue,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Montserrat"
                                )
                              ),
                            )
                          )
                        )
                      ),
                      SizedBox(height: 12.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "New to LOGIN?",
                            style: TextStyle(
                              fontFamily: "Montserrat"
                            )
                          ),
                          SizedBox(width: 5.0),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("RegisterPage");
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.lightBlue,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                              )
                            )
                          )
                        ],
                      )
                    ]
                  ),
                )
              ]
            ),
          ),
        ),
      )
    );
  }
}