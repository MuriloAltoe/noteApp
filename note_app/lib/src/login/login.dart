import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(),
              ElevatedButton(
                onPressed: () => {
                  print("object"),
                },
                child: Text("data"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
