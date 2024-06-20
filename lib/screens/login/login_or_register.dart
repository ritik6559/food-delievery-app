import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/screens/login/login_screen.dart';
import 'package:fooddelieveryapp/screens/login/register_screen.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLogin = true;
  void toggle() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return LogInScreen(onTap: toggle);
    }
    return RegisterScreen(onTap: toggle);
  }
}
