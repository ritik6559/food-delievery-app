import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/components/my_button.dart';
import 'package:fooddelieveryapp/components/my_textfield.dart';
import 'package:fooddelieveryapp/sevices/auth/auth_services.dart';

class RegisterScreen extends StatefulWidget {
  final void Function()? onTap;
  const RegisterScreen({super.key, required this.onTap});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void register() async {
    final _authServide = AuthServices();

    if (passwordController.text == confirmPasswordController.text) {
      try {
        await _authServide.signUpWithEmailPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(e.toString()),
            );
          },
        );
      }
    }else{
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Passwords doesn't match"),
            );
          },
        );

    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: const Text("User wants to register"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Padding(
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
                  'Let\'s create an account',
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(height: 25),
                MyTextField(
                  hint: 'name',
                  obscureText: false,
                  controller: nameController,
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
                const SizedBox(height: 25),
                MyTextField(
                  hint: 'confirm password',
                  obscureText: true,
                  controller: confirmPasswordController,
                ),
                MyButton(
                  text: 'Sgn in',
                  onTap: register,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Alreay a member?',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        ' Sign in',
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
      ),
    );
  }
}
