import 'package:ammar_darak/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ammar_darak/widgets/custom_textfield.dart';
import 'package:ammar_darak/screens/login_screen.dart';
import 'package:ammar_darak/services/auth_services.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final signupFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();

  void signupUser() {
    authService.signUpUser(
      context: context,
      email: emailController.text.toLowerCase(),
      password: passwordController.text,
      repeatPassword: repeatPasswordController.text,
      name: nameController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signupFormKey,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Signup",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),

            // USERNAME
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: CustomTextField(
                validator: (value) {
                  const pattern = r"^[\p{L}\d'\.\s\-]{3,100}$";
                  final regex = RegExp(pattern);
                  if (value == null || value.isEmpty) {
                    return "Please enter your username";
                  } else if (regex.hasMatch(value)) {
                    return "username must be between 3 and 100 characters";
                  }
                  return null;
                },
                controller: nameController,
                hintText: 'Enter your username',
              ),
            ),
            const SizedBox(height: 10),

            // EMAIL
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: CustomTextField(
                validator: (value) {
                  const pattern = r'^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$';
                  final regex = RegExp(pattern);
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  } else if (!regex.hasMatch(value)) {
                    return "Please enter a valid email";
                  }
                  return null;
                },
                controller: emailController,
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 10),

            // PASSWORD
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                validator: (value) {
                  const pattern =
                      r'^(?=.*\d|.*\W+)(?![.\n])(?=.*[A-Z])(?=.*[a-z])$';
                  final regex = RegExp(pattern);
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  } else if (value.length < 8 || value.length > 35) {
                    return "Must be between 8 and 35 characters";
                  } else if (regex.hasMatch(value)) {
                    return "Must have lowercase, uppercase,number or symbol";
                  } else if (value != repeatPasswordController.text) {
                    return "Passwords don't match";
                  }
                  return null;
                },
                controller: passwordController,
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 10),

            // REPEAT PASSWORD
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                validator: (value) {
                  const pattern =
                      r'^(?=.*\d|.*\W+)(?![.\n])(?=.*[A-Z])(?=.*[a-z])$';
                  final regex = RegExp(pattern);
                  if (value == null || value.isEmpty) {
                    return "Please repeat your password";
                  } else if (value.length < 8 || value.length > 35) {
                    return "Must be between 8 and 35 characters";
                  } else if (regex.hasMatch(value)) {
                    return "Must have lowercase, uppercase,number or symbol";
                  } else if (value != repeatPasswordController.text) {
                    return "Passwords don't match";
                  }
                  return null;
                },
                controller: repeatPasswordController,
                hintText: 'Repeat your password',
              ),
            ),
            const SizedBox(height: 10),

            // SIGN UP BUTTON
            ElevatedButton(
              onPressed: () {
                if (signupFormKey.currentState!.validate()) {
                  signupUser();
                  return;
                }
                showSnackBar(context, "make sure to fill all fields correctly");
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.black),
                textStyle: WidgetStateProperty.all(
                  const TextStyle(color: Colors.white),
                ),
                minimumSize: WidgetStateProperty.all(
                  Size(MediaQuery.of(context).size.width / 2.5, 50),
                ),
              ),
              child: const Text(
                "Sign up",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text('Login User?'),
            ),
          ],
        ),
      ),
    );
  }
}
