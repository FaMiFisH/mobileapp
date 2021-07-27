import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 1000.0, maxWidth: 300.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Register Page"),
                      Container(
                          child: TextFormField(
                              controller: nameController,
                              decoration: InputDecoration(
                                  labelText: "Name",
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).hintColor),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Theme.of(context).accentColor)),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Theme.of(context).accentColor,
                                  ),
                                  suffixIcon: nameController.text.isNotEmpty
                                      ? IconButton(
                                          icon: Icon(Icons.clear,
                                              color: Theme.of(context)
                                                  .accentColor),
                                          onPressed: () =>
                                              {nameController.clear()})
                                      : SizedBox.shrink()))),
                      SizedBox(height: 8.0),
                      Container(
                          child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle:
                                TextStyle(color: Theme.of(context).hintColor),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).accentColor)),
                            prefixIcon: Icon(Icons.email,
                                color: Theme.of(context).accentColor),
                            suffixIcon: emailController.text.isNotEmpty
                                ? IconButton(
                                    icon: Icon(Icons.clear,
                                        color: Theme.of(context).accentColor),
                                    onPressed: () => {emailController.clear()})
                                : SizedBox.shrink()),
                      )),
                      SizedBox(height: 8.0),
                      Container(
                        child: TextFormField(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.min,
                                children: passController.text.isNotEmpty
                                    ? [
                                        IconButton(
                                            icon: Icon(Icons.clear),
                                            onPressed: () =>
                                                {passController.clear()}),
                                        IconButton(
                                            icon: Icon(
                                              hidePass
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color:
                                                  Theme.of(context).accentColor,
                                            ),
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
                              labelText: "Confirm password",
                              labelStyle:
                                  TextStyle(color: Theme.of(context).hintColor),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor)),
                              prefixIcon: Icon(Icons.lock,
                                  color: Theme.of(context).accentColor),
                              suffixIcon: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.min,
                                children: confirmPassController.text.isNotEmpty
                                    ? [
                                        IconButton(
                                            icon: Icon(Icons.clear),
                                            onPressed: () => {
                                                  confirmPassController.clear()
                                                }),
                                        IconButton(
                                            icon: Icon(
                                              hideConfirmPass
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color:
                                                  Theme.of(context).accentColor,
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
                      Container(
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
                                      child: Text("Register",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    )))),
                        SizedBox(height: 12.0),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Already have an account?"),
                              SizedBox(width: 5.0),
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Login",
                                      style: TextStyle(
                                          color: Colors.lightBlue,
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.underline)))
                            ])
                      ])),
                    ]),
              ),
            )));
  }
}
