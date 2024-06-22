import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/components/my_button.dart';
import 'package:fooddelieveryapp/components/my_textfield.dart';
import 'package:fooddelieveryapp/sevices/auth/auth_services.dart';

class LogInScreen extends StatefulWidget {
  final void Function()? onTap;
  const LogInScreen({super.key, required this.onTap});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    final authServices = AuthServices();

    try {
      await authServices.signInWithEmailPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Passwords doesn't match"),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),
              Text(
                'Food delievery app',
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(height: 25),
              MyTextField(
                hint: 'email',
                obscureText: false,
                controller: emailController,
              ),
              const SizedBox(height: 25),
              MyTextField(
                hint: 'password',
                obscureText: true,
                controller: passwordController,
              ),
              MyButton(
                text: 'Log in',
                onTap: login,
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      ' Register now',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
