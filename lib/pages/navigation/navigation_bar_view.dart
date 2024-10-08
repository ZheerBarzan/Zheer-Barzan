import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/components/my_logo.dart';
import 'package:zheer_barzan/components/toggle_theme.dart';

class NavigationBarView extends StatelessWidget {
  final double height;
  final double width;
  final Function(GlobalKey) scrollToSection;
  final GlobalKey aboutKey;
  final GlobalKey skillsKey;
  final GlobalKey projectKey;
  final GlobalKey contactKey;

  const NavigationBarView(
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
    final isSmall = MediaQuery.of(context).size.width < 850;
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile) {
          return Container(
            height: 60,
            width: double.infinity,
            color: Theme.of(context).colorScheme.surface,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const MyLogo(),
                  const Spacer(),
                  const ToggleThemeButton(),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    icon: const Icon(Icons.menu),
                  )
                ],
              ),
            ),
          );
        }

        return Container(
          height: height * 0.1,
          width: width * 0.8,
          color: Theme.of(context).colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              children: [
                const MyLogo(),
                const Spacer(),
                const ToggleThemeButton(),
                const Spacer(),
                TextButton(
                  onPressed: () => scrollToSection(aboutKey),
                  child: AutoSizeText(
                    'About',
                    style: GoogleFonts.poppins(fontSize: isSmall ? 15 : 30),
                  ),
                ),
                TextButton(
                  onPressed: () => scrollToSection(skillsKey),
                  child: AutoSizeText(
                    'Skills',
                    style: GoogleFonts.poppins(fontSize: isSmall ? 15 : 30),
                  ),
                ),
                TextButton(
                  onPressed: () => scrollToSection(projectKey),
                  child: AutoSizeText(
                    'Projects',
                    style: GoogleFonts.poppins(fontSize: isSmall ? 15 : 30),
                  ),
                ),
                TextButton(
                  onPressed: () => scrollToSection(contactKey),
                  child: AutoSizeText(
                    'Contact',
                    style: GoogleFonts.poppins(fontSize: isSmall ? 15 : 30),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
