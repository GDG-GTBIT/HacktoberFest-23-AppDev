import 'package:flutter/material.dart';
import 'package:try1/screens/authentication/register.dart';
import 'package:try1/screens/authentication/sign_in.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);
   // authentication is a stateful widget
  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView() {
    setState(() =>
      showSignIn = !showSignIn);
  }
  @override
  Widget build(BuildContext context) {
    if(showSignIn) {
      return SignIn(toggleView: toggleView );
    }
    else
      {
        return Register(toggleView: toggleView);
      }
  }
}
