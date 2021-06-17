import 'package:flutter/material.dart';
import 'package:login_signup_system/clean.dart';
import 'package:login_signup_system/model/login_model.dart';

import 'package:login_signup_system/progress.dart';

class Rounded extends StatefulWidget {
  @override
  _RoundedState createState() => _RoundedState();
}

class _RoundedState extends State<Rounded> {
  bool hidePassword = true;
  bool isApiCallProcess = false;
  LoginRequestModel loginRequestModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    loginRequestModel = new LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _buttonSetup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
    );
  }

  Widget _buttonSetup(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Container(
          height: size.height * 0.08,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: kBlue,
          ),
          // ignore: deprecated_member_use
          child: FlatButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text(
                'Sign in',
                style: kBodyText.copyWith(fontWeight: FontWeight.bold),
              ))),
    );
  }
}
