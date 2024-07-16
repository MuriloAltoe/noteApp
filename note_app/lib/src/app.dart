import 'package:flutter/material.dart';
import 'package:note_app/src/login/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: Colors.lightBlue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
      },
    );
  }
}
