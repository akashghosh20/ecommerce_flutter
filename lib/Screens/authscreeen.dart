import 'package:ecommerce/Constants/global_variables.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/authscreen';
  AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
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
              ),
            ),
          ],
        ),
      )),
    );
  }
}
