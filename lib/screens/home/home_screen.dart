import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/components/my_drawer.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: MyDrawer(),
    );
  }
}