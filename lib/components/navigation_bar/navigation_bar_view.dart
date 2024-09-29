import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/components/navigation_bar/navigaiton_bar_item.dart';
import 'package:zheer_barzan/components/navigation_bar/navigation_items.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
                  AutoSizeText(
                    'Zheer Barzan',
                    style: GoogleFonts.poppins(fontSize: isSmall ? 20 : 30),
                  ),
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
                AutoSizeText(
                  'Zheer Barzan',
                  style: GoogleFonts.poppins(fontSize: isSmall ? 20 : 30),
                ),
                const Spacer(),
                for (var item in kNavigationItems)
                  NavigationBarItem(text: item.text, onPressed: () {}),
              ],
            ),
          ),
        );
      },
    );
  }
}
