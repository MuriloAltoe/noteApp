import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 97, 118, 145),
              borderRadius: BorderRadius.circular(15),
            ),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.8,
              maxWidth: MediaQuery.of(context).size.width * 0.9,
            ),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Image.network(
                    "https://tech-wiki.net/images/a/a8/Notepad%2B%2B_logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20),
                _buildTextField("Username", context),
                SizedBox(height: 10),
                _buildTextField("Password", context, obscureText: true),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => print("Login pressed"),
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  child: Text(
                    "Don't have an account? Sign up",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => print("Navigate to sign up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, BuildContext context,
      {bool obscureText = false}) {
    final controller = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: label, // Texto que será substituído ao digitar algo
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
          ),
          obscureText: obscureText,
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
