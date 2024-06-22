import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/components/my_drawer_tile.dart';
import 'package:fooddelieveryapp/screens/settings/settings_screen.dart';
import 'package:fooddelieveryapp/sevices/auth/auth_services.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authServices = AuthServices();
    authServices.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.only(top: 75.0, bottom: 25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              MyDrawerTile(
                text: "H O M E",
                icon: Icons.home,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              MyDrawerTile(
                text: "S E T T I N G S",
                icon: Icons.settings,
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
                },
              ),
              const Spacer(),
              MyDrawerTile(
                  text: "L O G O U T", icon: Icons.logout, onTap: logout),
            ],
          ),
        ),
      ),
    );
  }
}
