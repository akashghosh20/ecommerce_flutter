import 'package:ecommerce/Constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/authscreen';
  AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global_variables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
                child: const Text(
              "Welcome to my e-commerce site",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            )),
            ListTile(
              title: Text(
                "Create an account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                  activeColor: global_variables.secondaryColor,
                  value: Auth.signup,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  }),
            ),
            ListTile(
              title: Text(
                "Sign in ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                  activeColor: global_variables.secondaryColor,
                  value: Auth.signin,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
