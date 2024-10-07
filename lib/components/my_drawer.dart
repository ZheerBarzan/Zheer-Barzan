import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/components/my_list_tile.dart';
import 'package:zheer_barzan/components/my_logo.dart';

class MyDrawer extends StatelessWidget {
  final double height;
  final double width;
  final Function(GlobalKey) scrollToSection;
  final GlobalKey aboutKey;
  final GlobalKey skillsKey;
  final GlobalKey projectKey;
  final GlobalKey contactKey;
  const MyDrawer(
      {super.key,
      required this.height,
      required this.width,
      required this.scrollToSection,
      required this.aboutKey,
      required this.skillsKey,
      required this.projectKey,
      required this.contactKey});

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
                  MyListTile(
                    icon: Icons.home,
                    text: "About",
                    onTap: () => scrollToSection(aboutKey),
                  ),
                  MyListTile(
                    icon: Icons.handyman,
                    text: "Skills",
                    onTap: () => scrollToSection(skillsKey),
                  ),
                  MyListTile(
                    icon: Icons.computer_sharp,
                    text: "Projects",
                    onTap: () => scrollToSection(projectKey),
                  ),
                  MyListTile(
                    icon: Icons.contact_page,
                    text: "Contact",
                    onTap: () => scrollToSection(contactKey),
                  )
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
