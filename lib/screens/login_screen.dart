import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:login_signup_system/model/login_model.dart';
// ignore: unused_import
import 'package:login_signup_system/progress.dart';
// ignore: unused_import
import 'package:login_signup_system/screens/sigin_screen.dart';
import 'EmailField.dart';
import 'password.dart';
import 'button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  get key => null;

  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
            shaderCallback: (rect) => LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [Colors.black, Colors.transparent]).createShader(rect),
            blendMode: BlendMode.darken,
            child: Container(
                decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/clean.jpg"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.darken)),
            ))),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                  child: Center(
                      child: Text(
                "Safisha",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ))),
              EmailField(),
              PasswordField(),
              /*Text(
                'Forgot Password',
                style: kBodyText,
              ), */
              SizedBox(
                height: 25,
              ),
              Rounded(),
              SizedBox(
                height: 25,
              ),
              Flexible(
                  child: ElevatedButton(
                child: new Text(
                  "Don't have an Account? Register Now ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignScreen()),
                  );
                },
              )),
            ],
          ),
        )
      ],
    );
  }
}
