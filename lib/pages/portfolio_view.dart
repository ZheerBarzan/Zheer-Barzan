import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/my_drawer.dart';
import 'package:zheer_barzan/components/navigation_bar/navigation_bar_view.dart';
import 'package:zheer_barzan/pages/desktop/hero_desktop_view.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        endDrawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const NavigationBarView(),
                HeroView(height: height, width: width),
                Container(
                  height: height,
                  width: width,
                  color: Theme.of(context).colorScheme.tertiary,
                  child: Center(
                    child: Text('Desktop View',
                        style: GoogleFonts.poppins(fontSize: 30)),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
