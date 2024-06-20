import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/model/restaurant.dart';
import 'package:fooddelieveryapp/screens/login/login_or_register.dart';
import 'package:fooddelieveryapp/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context)=> ThemeProvider()),
        ChangeNotifierProvider(create: (context) => Restaurant())
      ],
      
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
    );
  }
}
