import 'package:ammar_darak/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService authService = AuthService();

  void loginUser(){
    authService.signInUser(
      context: context, 
      email: _emailController.text, 
      password: _passwordController.text
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Email
          const Text('Login', style: TextStyle(fontSize: 24)),
          SizedBox(height: MediaQuery.of(context).size.height * 0.8),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(hintText: "Enter Your Email", controller: _emailController),
          ),

          // Password
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(hintText: "Enter Your Password", controller: _passwordController),
          ),
          const SizedBox(height: 40),
          ElevatedButton(onPressed: loginUser,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              textStyle: MaterialStateProperty.all(
                const TextStyle(color: Colors.white)
              ),
              minimumSize: MaterialStateProperty.all(
                 Size(MediaQuery.of(context).size.width / 2.5, 50),
              )
            ),
           child: const Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 16),
            )
            )
        ],
    ),
    );
  }
}