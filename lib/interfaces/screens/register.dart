import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../mainApp.dart';
import 'home/home.dart';
import '../../constants.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // keep track of pass/confirmPass visibility
  var hidePass = true;
  var hideConfirmPass = true;

  //sets the state for pass/confirmPass visibility
  void togglePassVisibility() {
    setState(() {
      hidePass = !hidePass;
    });
  }

  void toggleConfirmPassVisibility() {
    setState(() {
      hideConfirmPass = !hideConfirmPass;
    });
  }

  // intialising text field controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var confirmPassController = TextEditingController();

  @override
  void initState() {
    super.initState();

    //start listening to changes
    nameController.addListener(() {
      setState(() {});
    });
    emailController.addListener(() {
      setState(() {});
    });
    passController.addListener(() {
      setState(() {});
    });
    confirmPassController.addListener(() {
      setState(() {});
    });
  }

  // -Build method---------
  @override
  Widget build(BuildContext context) {
    /// lets us know the height and width of the device
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        body: deviceSize.width < 330
            ? Center(
                child: Text("Screen width is too small\nRotate the screen"))
            : SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Center(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                maxHeight: 500.0, maxWidth: 350.0),
                            child: Container(
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColorLight,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Theme.of(context).shadowColor,
                                        spreadRadius: 1),
                                  ],
                                  borderRadius: BorderRadius.circular(24)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Text("Register",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2),
                                    ),
                                    SizedBox(height: 8.0),
                                    Container(
                                        child: Column(
                                      children: [
                                        Container(
                                          child: TextFormField(
                                            controller: nameController,
                                            decoration: InputDecoration(
                                                labelText: "Name",
                                                prefixIcon: Icon(Icons.person),
                                                suffixIcon: nameController
                                                        .text.isNotEmpty
                                                    ? IconButton(
                                                        icon: Icon(Icons.clear),
                                                        onPressed: () => {
                                                          nameController.clear()
                                                        },
                                                      )
                                                    : SizedBox.shrink()),
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        Container(
                                          child: TextFormField(
                                            controller: emailController,
                                            decoration: InputDecoration(
                                                labelText: "Email",
                                                prefixIcon: Icon(Icons.email),
                                                suffixIcon: emailController
                                                        .text.isNotEmpty
                                                    ? IconButton(
                                                        icon: Icon(Icons.clear),
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
                                                prefixIcon: Icon(Icons.lock),
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
                                                                  Icons.clear),
                                                              onPressed: () => {
                                                                    passController
                                                                        .clear()
                                                                  }),
                                                          IconButton(
                                                              icon: Icon(hidePass
                                                                  ? Icons
                                                                      .visibility_off
                                                                  : Icons
                                                                      .visibility),
                                                              onPressed: () =>
                                                                  togglePassVisibility()),
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
                                          child: TextFormField(
                                            controller: confirmPassController,
                                            decoration: InputDecoration(
                                                labelText: "Confirm Password",
                                                prefixIcon: Icon(Icons.lock),
                                                suffixIcon: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children:
                                                      confirmPassController
                                                              .text.isNotEmpty
                                                          ? [
                                                              IconButton(
                                                                  icon: Icon(Icons
                                                                      .clear),
                                                                  onPressed:
                                                                      () => {
                                                                            confirmPassController.clear()
                                                                          }),
                                                              IconButton(
                                                                  icon: Icon(
                                                                    hideConfirmPass
                                                                        ? Icons
                                                                            .visibility_off
                                                                        : Icons
                                                                            .visibility,
                                                                  ),
                                                                  onPressed: () =>
                                                                      toggleConfirmPassVisibility()),
                                                            ]
                                                          : [],
                                                )),
                                            obscureText: hideConfirmPass,
                                            enableSuggestions: false,
                                            autocorrect: false,
                                          ),
                                        ),
                                        SizedBox(height: 48.0),
                                      ],
                                    )),
                                    Container(
                                        child: Column(children: <Widget>[
                                      ElevatedButton(
                                          onPressed: () => Navigator.of(context)
                                              .pushNamedAndRemoveUntil(
                                                  "MainApp",
                                                  (Route<dynamic> route) =>
                                                      false),
                                          child: Text("Register")),
                                      SizedBox(height: 12.0),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text("Already have an account?",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2),
                                            SizedBox(width: 5.0),
                                            InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text("Login",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2))
                                          ])
                                    ])),
                                  ]),
                            ),
                          ),
                        )),
                  ),
                ),
              ));
  }
}
