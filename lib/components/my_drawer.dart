import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if (!size.isMobile) return const SizedBox();
        return Drawer(
          backgroundColor: Theme.of(context).colorScheme.surface,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  //logo
                  DrawerHeader(
                    child: Icon(Icons.person,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        size: 50),
                  ),
                  //home list tile
                  MyListTile(
                    icon: Icons.home,
                    text: "H O M E",
                    onTap: () => Navigator.pop(context),
                  ),
                  //settings list tile
                  MyListTile(
                    icon: Icons.settings,
                    text: "S E T T I N G S",
                    onTap: () {},
                  ),
                ],
              ),
              //logout
            ],
          ),
        );
      },
    );
  }
}
