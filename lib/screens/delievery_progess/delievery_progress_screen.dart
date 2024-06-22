import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/components/my_receipt.dart';
import 'package:fooddelieveryapp/model/restaurant.dart';
import 'package:fooddelieveryapp/sevices/database/firebase.dart';
import 'package:provider/provider.dart';

class DelieveryProgressScreen extends StatefulWidget {
  const DelieveryProgressScreen({super.key});

  @override
  State<DelieveryProgressScreen> createState() =>
      _DelieveryProgressScreenState();
}

class _DelieveryProgressScreenState extends State<DelieveryProgressScreen> {
  FireStoreService db = FireStoreService();
  @override
  void initState() {
    super.initState();
    //submit order to database
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delievery in progress..."),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: const Column(
        children: [MyReceipt()],
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          //profile pic of driver.
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),

          const SizedBox(
            width: 10,
          ),
          //driver details

          Column(
            children: [
              Text(
                "driver",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const Text("Driver")
            ],
          ),

          const Spacer(),

          Row(
            children: [
              //message button
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              //call button
              const SizedBox(
                width: 10,
              ),

              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
