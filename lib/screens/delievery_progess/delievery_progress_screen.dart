import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/components/my_receipt.dart';

class DelieveryProgressScreen extends StatelessWidget {
  const DelieveryProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delievery in progress..."),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          MyReceipt()
        ],
      ),
    );
  }
}