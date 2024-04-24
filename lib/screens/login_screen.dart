import 'package:ammar_darak/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ammar_darak/custom_textfield.dart';
import 'package:ammar_darak/services/auth_services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailOrUsernameController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = AuthService();

  final signupFormKey = GlobalKey<FormState>();

  void loginUser() {
    authService.signInUser(
      context: context,
      emailOrUsername: emailOrUsernameController.text,
      password: passwordController.text,
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
              "Login",
              style: TextStyle(fontSize: 31),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
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
                controller: emailOrUsernameController,
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 20),
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
                  }
                  return null;
                },
                controller: passwordController,
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                if (signupFormKey.currentState!.validate()) {
                  loginUser();
                  return;
                }
                showSnackBar(context, "make sure to fill all fields correctly");
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue),
                textStyle: WidgetStateProperty.all(
                  const TextStyle(color: Colors.white),
                ),
                minimumSize: WidgetStateProperty.all(
                  Size(MediaQuery.of(context).size.width / 2.5, 50),
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
