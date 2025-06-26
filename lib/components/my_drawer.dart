import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/services/auth/auth_services.dart';
import '../pages/settings_pages.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart'; // Make sure this is correct

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  // Logout method
  void logout(BuildContext context) {
    final authService = AuthService();
    authService.signOut(); // Firebase থেকে sign out

    // Login page এ পাঠাও এবং পুরা stack ক্লিয়ার করে দাও
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // Drawer Header
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.food_bank_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          // Divider
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),

          // Home Tile
          ListTile(
            leading: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            title: const Text("H O M E"),
            onTap: () {
              Navigator.pop(context); // Close drawer
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),

          // Settings Tile
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            title: const Text("S E T T I N G S"),
            onTap: () {
              Navigator.pop(context); // Close drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),

          // Spacer pushes logout to bottom
          const Spacer(),

          // Divider
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),

          // Logout Tile
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            title: const Text("L O G O U T"),
            onTap: () {
              logout(context); // Call logout
            },
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
