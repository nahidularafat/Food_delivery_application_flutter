import 'package:flutter/material.dart';

import '../pages/settings_pages.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ), // Icon
          ), // Padding

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ), // Divider
          ), // Padding

          // home list tile
          ListTile(
            leading: Icon(
              Icons.home,
              
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            title: Text("H O M E"),
            onTap: () {
              Navigator.pop(context);
              // Add navigation to home screen here
            },
          ),

          // settings list tile
ListTile(
  leading: Icon(
    Icons.settings,
    color: Theme.of(context).colorScheme.inversePrimary,
  ),
  title: const Text("S E T T I N G S"),
  onTap: () {
    Navigator.pop(context); // Close the drawer
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SettingsPage(),
      ),
    );
  },
),
          // logout list tile
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            title: Text("L O G O U T"),
            onTap: () {
              Navigator.pop(context);
              // Add logout functionality here
            },
          ),
        ],
      ),
    );
  }
}