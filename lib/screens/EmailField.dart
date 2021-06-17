import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_system/model/login_model.dart';
import 'package:login_signup_system/progress.dart';
import 'package:login_signup_system/clean.dart';

class EmailField extends StatefulWidget {
  String get hint => 'Email';

  IconData get icon => FontAwesomeIcons.envelope;

  TextInputAction get inputAction => TextInputAction.next;

  TextInputType get inputType => TextInputType.emailAddress;

  @override
  _EmailFieldState createState() =>
      _EmailFieldState(icon, hint, inputType, inputAction);
}

class _EmailFieldState extends State<EmailField> {
  _EmailFieldState(this.icon, this.hint, this.inputType, this.inputAction);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  bool isApiCallProcess = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginRequestModel loginRequestModel;
  final scaffoldkey = GlobalKey<ScaffoldState>();
  final textController = new TextEditingController();
  // ignore: unused_field
  String _email;
  get key => null;
  @override
  void initState() {
    super.initState();
    loginRequestModel =
        new LoginRequestModel(email: 'kemo@gmail.com', password: '1234');
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSetup(context),
      inAsyncCall: isApiCallProcess,
      key: key,
    );
  }

  Widget _uiSetup(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.8),
          child: Container(
              height: size.height * 0.08,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.grey[500].withOpacity(0.5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                  child: TextFormField(
                      controller: textController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Icon(
                              icon,
                              size: 30,
                              color: kWhite,
                            ),
                          ),
                          hintText: hint,
                          hintStyle: kBodyText,
                          labelText: 'Enter Email'),
                      style: kBodyText,
                      keyboardType: inputType,
                      textInputAction: inputAction,
                      validator: (val) =>
                          !val.contains('@') ? 'Invalid Email' : null,
                      onSaved: (val) => _email = val))),
        ));
  }
}
