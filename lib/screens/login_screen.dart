import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_system/clean.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
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
                  image: AssetImage("assets/images/login.jpg"),
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
                'Cleaning Limited',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ))),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.8),
                  child: Container(
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.grey[500]!.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: Icon(
                            FontAwesomeIcons.envelope,
                            size: 30,
                            color: kWhite,
                          ),
                        ),
                        hintText: 'Email',
                        hintStyle: kBodyText,
                      ),
                      style: kBodyText,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.8),
                  child: Container(
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.grey[500]!.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: Icon(
                            FontAwesomeIcons.lock,
                            size: 30,
                            color: kWhite,
                          ),
                        ),
                        hintText: 'password',
                        hintStyle: kBodyText,
                      ),
                      obscureText: true,
                      style: kBodyText,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
