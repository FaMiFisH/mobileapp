import 'package:alevelcoursework/interfaces/components/themeSwitch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../mainApp.dart';
import '../../themes/themes.dart';
import 'home/home.dart';
import '../../constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    // gets the theme mode
    ThemeMode themeMode = Provider.of<ThemeProvider>(context).themeMode;

    /// lets us know the height and width of the device
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        actions: [ThemeSwitch()],
      ),
      // minimum width for screen to load
      body: deviceSize.width < 325
          ? Center(child: Text("Screen width too small\nRotate the screen"))
          : SafeArea(
              child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Center(
                              child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                      maxHeight: 400.0, maxWidth: 350.0),
                                  child: Container(
                                    padding: EdgeInsets.all(20.0),
                                    decoration: BoxDecoration(
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Theme.of(context).shadowColor,
                                              spreadRadius: 1),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                              child: Text(
                                            "Login",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2,
                                          )),
                                          SizedBox(height: 12.0),
                                          Container(
                                              child: Column(children: <Widget>[
                                            Container(
                                              child: TextFormField(
                                                controller: emailController,
                                                decoration: InputDecoration(
                                                    labelText: "Email",
                                                    prefixIcon:
                                                        Icon(Icons.email),
                                                    suffixIcon: emailController
                                                            .text.isNotEmpty
                                                        ? IconButton(
                                                            icon: Icon(
                                                                Icons.clear),
                                                            onPressed: () => {
                                                              emailController
                                                                  .clear()
                                                            },
                                                          )
                                                        : SizedBox.shrink()),
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              child: TextFormField(
                                                controller: passController,
                                                decoration: InputDecoration(
                                                    labelText: "Password",
                                                    prefixIcon: Icon(
                                                      Icons.lock,
                                                    ),
                                                    suffixIcon: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: passController
                                                              .text.isNotEmpty
                                                          ? [
                                                              IconButton(
                                                                  icon: Icon(
                                                                    Icons.clear,
                                                                  ),
                                                                  onPressed:
                                                                      () => {
                                                                            passController.clear()
                                                                          }),
                                                              IconButton(
                                                                  icon: Icon(
                                                                    hidePass
                                                                        ? Icons
                                                                            .visibility_off
                                                                        : Icons
                                                                            .visibility,
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
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                                alignment: Alignment(1.0, 0.0),
                                                padding:
                                                    EdgeInsets.only(top: 12.0),
                                                child: InkWell(
                                                    child: Text(
                                                        "Forgot Password?",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .subtitle1)))
                                          ])),
                                          SizedBox(height: 32.0),
                                          //buttons
                                          Container(
                                            child: Column(children: [
                                              ElevatedButton(
                                                  onPressed: () => Navigator.of(
                                                          context)
                                                      .pushNamedAndRemoveUntil(
                                                          "MainApp",
                                                          (Route<dynamic>
                                                                  route) =>
                                                              false),
                                                  child: Text("Login",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .button)),
                                              SizedBox(height: 12.0),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text("Don't have an account?",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2),
                                                  SizedBox(width: 5.0),
                                                  InkWell(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .pushNamed(
                                                                "Register");
                                                      },
                                                      child: Text("Register",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .subtitle2))
                                                ],
                                              )
                                            ]),
                                          ),
                                        ]),
                                  )))),
                    ),
                  ),
                ),
              ],
            )),
    );
  }
}
