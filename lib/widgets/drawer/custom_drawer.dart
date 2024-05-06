import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:zavod_demo/config/router/router.gr.dart';

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
            onTap: () => context.pushRoute(const ProfileRoute()),
          ),
          ListTile(
            title: const Text("Support"),
            onTap: () => context.pushRoute(const SupportRoute()),
          ),
          ListTile(
            title: const Text("History"),
            onTap: () => context.pushRoute(const HistoryRoute()),
          ),
        ],
      ),
    );
  }
}
