import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/components/my_list_tile.dart';
import 'package:zheer_barzan/components/my_logo.dart';
import 'package:zheer_barzan/components/navigation_bar/navigation_items.dart';

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
                  const DrawerHeader(
                    child: MyLogo(),
                  ),
                  //home list tile
                  for (var items in kNavigationItems)
                    MyListTile(
                      icon: items.icon,
                      text: items.text,
                      onTap: () => Navigator.pop(context),
                    ),
                  //settings list tile
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
