import 'package:alevelcoursework/interfaces/components/themeSwitch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';

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
  var emailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // start listening to the changes
    passController.addListener(() {
      setState(() {});
    });
    emailController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // clean the controllers when the widget is removed from the widget tree
    passController.dispose();
    emailController.dispose();

    super.dispose();
  }

  // -Build method---------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Center(
                    child: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxHeight: 500.0, maxWidth: 350.0),
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColorLight,
                              border: Border(),
                              boxShadow: [
                                BoxShadow(
                                    color: Theme.of(context).shadowColor,
                                    spreadRadius: 2),
                              ],
                              borderRadius: BorderRadius.circular(24)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                //Logo
                                Container(
                                    // TODO: add the image logo instead of text
                                    child: Text("Login",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1
                                        //TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
                                        )),
                                //Text boxes
                                Container(
                                    //padding: EdgeInsets.fromLTRB(20.0, 32.0, 20.0, 0.0),
                                    child: Column(children: <Widget>[
                                  TextFormField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        labelText: "Email",
                                        labelStyle: TextStyle(
                                            color: Theme.of(context).hintColor),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .accentColor)),
                                        prefixIcon: Icon(Icons.email,
                                            color: Theme.of(context)
                                                .primaryColorDark),
                                        suffixIcon: emailController
                                                .text.isNotEmpty
                                            ? IconButton(
                                                icon: Icon(Icons.clear,
                                                    color: Theme.of(context)
                                                        .primaryColorDark),
                                                onPressed: () =>
                                                    {emailController.clear()},
                                              )
                                            : SizedBox.shrink()),
                                  ),
                                  SizedBox(height: 8.0),
                                  TextFormField(
                                    controller: passController,
                                    decoration: InputDecoration(
                                        labelText: "Password",
                                        labelStyle: TextStyle(
                                            color: Theme.of(context).hintColor),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .accentColor)),
                                        prefixIcon: Icon(Icons.lock,
                                            color: Theme.of(context)
                                                .primaryColorDark),
                                        suffixIcon: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.min,
                                          children: passController
                                                  .text.isNotEmpty
                                              ? [
                                                  IconButton(
                                                      icon: Icon(Icons.clear,
                                                          color: Theme.of(
                                                                  context)
                                                              .primaryColorDark),
                                                      onPressed: () => {
                                                            passController
                                                                .clear()
                                                          }),
                                                  IconButton(
                                                      icon: Icon(
                                                        hidePass
                                                            ? Icons
                                                                .visibility_off
                                                            : Icons.visibility,
                                                        color: Theme.of(context)
                                                            .primaryColorDark,
                                                      ),
                                                      onPressed: () =>
                                                          toggleVisibility()),
                                                ]
                                              : [],
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
                                          child: Text("Forgot Password?",
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColorDark,
                                                  fontWeight: FontWeight.bold,
                                                  decoration: TextDecoration
                                                      .underline))))
                                ])),
                                SizedBox(height: 48.0),
                                //buttons
                                Container(
                                  child: Column(children: [
                                    ElevatedButton(
                                      onPressed: () => runApp(HomePage()),
                                      child: Text("Login"),
                                    ),
                                    SizedBox(height: 12.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Don't have an account?"),
                                        SizedBox(width: 5.0),
                                        InkWell(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .pushNamed("Register");
                                            },
                                            child: Text("Register",
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration
                                                        .underline)))
                                      ],
                                    )
                                  ]),
                                ),
                              ]),
                        ))))));
  }
}
