import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // keeps track of password visibility
  var hidePass = true;

  //sets the state for password visibility
  void toggleVisibility() {
    setState(() {
      hidePass = !hidePass;
    });
  }

  // initialising text field controllers
  // used to retrieve values of the text fields
  var passController = TextEditingController();

  // checks whether the text field of the given controller is empty
  bool isTextFieldEmpty(controller) {
    return passController.text.isEmpty;
  }

  @override
  void initState() {
    super.initState();

    // start listening to the changes
    passController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // clean the controllers when the widget is removed from the widget tree
    passController.dispose();

    super.dispose();
  }

  // -Build method---------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 500.0, maxWidth: 300.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Logo
                Container(
                    // TODO: add the image logo instead of text
                    child: Text(
                  "LOGO",
                  style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                )),
                //Text boxes
                Container(
                    //padding: EdgeInsets.fromLTRB(20.0, 32.0, 20.0, 0.0),
                    child: Column(children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Theme.of(context).hintColor),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).accentColor)),
                      prefixIcon: Icon(Icons.email,
                          color: Theme.of(context).accentColor),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  TextFormField(
                    controller: passController,
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Theme.of(context).hintColor),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor)),
                        prefixIcon: Icon(Icons.lock,
                            color: Theme.of(context).accentColor),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            passController.text.isNotEmpty
                                ? IconButton(
                                    icon: Icon(Icons.clear),
                                    onPressed: () => {passController.clear()})
                                : SizedBox.shrink(),
                            IconButton(
                                icon: Icon(
                                  hidePass
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Theme.of(context).accentColor,
                                ),
                                onPressed: () => toggleVisibility()),
                          ],
                        )),
                    obscureText: hidePass,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                  SizedBox(height: 8.0),
                  Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 12.0),
                      child: InkWell(
                          child: Text("Forgot Password",
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline))))
                ])),
                SizedBox(height: 48.0),
                //buttons
                Container(
                  //padding: EdgeInsets.fromLTRB(20, top, right, bottom)
                  child: Column(children: <Widget>[
                    Container(
                        height: 40.0,
                        padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                        child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Theme.of(context).shadowColor,
                            color: Theme.of(context).accentColor,
                            elevation: 7.0,
                            child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                  child: Text("LOGIN",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                )))),
                    SizedBox(height: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?",
                            style: TextStyle(fontFamily: "Montserrat")),
                        SizedBox(width: 5.0),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("Register");
                            },
                            child: Text("Register now",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline)))
                      ],
                    )
                  ]),
                )
              ]),
        ),
      ),
    ));
  }
}
