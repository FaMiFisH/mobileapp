import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
  }

class _RegisterPageState extends State<RegisterPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Text(
              "Register Page"
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontFamily: "Montserrat"
                    )
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                      )
                    )
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}