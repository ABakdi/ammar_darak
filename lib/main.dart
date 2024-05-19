import 'package:ammar_darak/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:ammar_darak/providers/user_provider.dart';
import 'package:ammar_darak/screens/home_screen.dart';
import 'package:ammar_darak/screens/signup_screen.dart';
import 'package:ammar_darak/services/auth_services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ammar Darak',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Provider.of<UserProvider>(context).user.token.isEmpty
          ? const LoginScreen()
          : const HomeScreen(),
    );
  }
}
