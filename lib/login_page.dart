import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
import 'package:uts_desfianto/Login/my_button.dart';
import 'package:uts_desfianto/Login/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in
  void signUserIn() {
    String username = usernameController.text;
    String password = passwordController.text;

    // Add your authentication logic here (e.g., check username and password against a database)
    // For this example, I'll just print the username and password to the console
    print("Username: $username");
    print("Password: $password");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 20,
              ),

              //welcome
              Text(
                'Selamat Datang IGracias',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 24, // Perbesar ukuran tulisan
                  height: 10,
                  fontWeight: FontWeight
                      .bold, // Pergantian ukuran tulisan menjadi tebal
                ),
              ),

              SizedBox(
                height: 25,
              ),

              //username
              MyTextField(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),

              SizedBox(
                height: 15,
              ),

              //password
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              SizedBox(
                height: 15,
              ),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the ForgotPasswordPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Lupa Password?",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),

              //sign in button
              MyButton(
                onTap: signUserIn,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Center(
        child: Text("This is the Forgot Password page."),
      ),
    );
  }
}
