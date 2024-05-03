import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text("Demo App"),
            ),
          ),
          ListTile(
            title: const Text("Profile"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Support"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("History"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
