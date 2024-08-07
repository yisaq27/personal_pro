import 'package:flutter/material.dart';
import 'package:project/components/list_tile.dart';

class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          const DrawerHeader(
            child: Center(
              child: Icon(
                Icons.web,
                size: 43,
                color: Color.fromARGB(135, 157, 170, 170),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          MylistTile(
            icon: Icons.home,
            text: "home",
            onTap: () => Navigator.pop(context),
          ),
          MylistTile(
            icon: Icons.settings,
            text: "settings",
            onTap: () => Navigator.pop(context),
          ),
          MylistTile(
            icon: Icons.person,
            text: "profile",
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
