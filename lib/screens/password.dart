import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_system/model/login_model.dart';
// ignore: unused_import
import 'package:login_signup_system/progress.dart';
import 'package:login_signup_system/clean.dart';

class PasswordField extends StatefulWidget {
  String get hint => 'Enter Password';

  IconData get icon => FontAwesomeIcons.lock;

  TextInputAction get inputAction => TextInputAction.done;

  TextInputType get inputType => TextInputType.name;

  @override
  _PasswordFieldState createState() =>
      _PasswordFieldState(hint, inputType, inputAction, icon);
}

class _PasswordFieldState extends State<PasswordField> {
  _PasswordFieldState(this.hint, this.inputType, this.inputAction, this.icon);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  LoginRequestModel loginRequestModel;
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
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
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Icon(icon, size: 30, color: kWhite),
                  ),
                  hintText: hint,
                  hintStyle: kBodyText,
                ),
                obscureText: true,
                style: kBodyText,
                keyboardType: inputType,
                textInputAction: inputAction,
                onSaved: (input) => loginRequestModel.password = input,
                validator: (input) => input.length < 3
                    ? "Password should be more than 3 characters"
                    : null,
              ),
            )));
  }
}
