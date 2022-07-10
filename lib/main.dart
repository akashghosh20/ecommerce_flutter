import 'package:ecommerce/Constants/global_variables.dart';
import 'package:ecommerce/Screens/authscreeen.dart';
import 'package:ecommerce/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: global_variables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: global_variables.secondaryColor,
          ),
          appBarTheme: AppBarTheme(
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.black,
              ))),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Center(child: Text("Akash's World")),
            ],
          ),
        ),
        body: Column(
          children: [
            const Center(
              child: Text(
                "AKASHS WORLD",
              ),
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AuthScreen.routeName);
                  },
                  child: Text("Log In"));
            })
          ],
        ),
      ),
    );
  }
}
