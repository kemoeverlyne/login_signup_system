import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_system/clean.dart';
import 'package:login_signup_system/screens/login_screen.dart';

class SignScreen extends StatefulWidget {
  SignScreen({Key key}) : super(key: key);

  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  get key => null;

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
                "Safisha",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ))),
              UsernameInputField(
                  key: (key),
                  icon: FontAwesomeIcons.user,
                  hint: 'Username',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next),
              TextInputField(
                  hint: 'Email',
                  icon: FontAwesomeIcons.envelope,
                  inputAction: TextInputAction.next,
                  inputType: TextInputType.emailAddress,
                  key: (key)),
              PasswordInput(
                  icon: FontAwesomeIcons.lock,
                  hint: 'Password',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.done),
              ConfirmPassword(
                  icon: FontAwesomeIcons.lock,
                  hint: 'Confirm Password',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.done),
              /*Text(
                'Forgot Password',
                style: kBodyText,
              ), */
              SizedBox(
                height: 25,
              ),
              RoundedButton(
                buttonName: 'Sign Up',
              ),
              SizedBox(
                height: 25,
              ),
              Flexible(
                  child: ElevatedButton(
                child: new Text(
                  "Already have an Account? Sign In ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
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

class TextInputField extends StatelessWidget {
  const TextInputField({
    @required Key key,
    @required this.icon,
    this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

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
            child: TextField(
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
              ),
              style: kBodyText,
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          )),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key,
    @required this.icon,
    this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

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
              child: TextField(
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
              ),
            )));
  }
}

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({
    Key key,
    this.icon,
    this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

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
              child: TextField(
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
              ),
            )));
  }
}

class UsernameInputField extends StatelessWidget {
  const UsernameInputField({
    @required Key key,
    @required this.icon,
    this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

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
            child: TextField(
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
              ),
              style: kBodyText,
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          )),
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key key, this.buttonName}) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBlue,
      ),
      // ignore: deprecated_member_use
      child: FlatButton(
          onPressed: () {},
          child: Text(
            'Sign Up',
            style: kBodyText.copyWith(fontWeight: FontWeight.bold),
          )),
    );
  }
}
