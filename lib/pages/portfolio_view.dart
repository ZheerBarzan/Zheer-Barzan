import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/my_drawer.dart';
import 'package:zheer_barzan/pages/contact/contact_view.dart';
import 'package:zheer_barzan/pages/navigation/navigation_bar_view.dart';
import 'package:zheer_barzan/pages/about/about_view.dart';
import 'package:zheer_barzan/pages/home/home_view.dart';
import 'package:zheer_barzan/pages/projects/project_view.dart';
import 'package:zheer_barzan/pages/skills/skills_view.dart';

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
                NavigationBarView(height: height, width: width),
                HomeView(height: height, width: width),
                AboutView(height: height, width: width),
                SkillsView(height: height, width: width),
                ProjectView(height: height, width: width),
                ContactView(height: height, width: width),
                Container(
                  height: height * 0.05,
                  width: width,
                  color: Theme.of(context).colorScheme.surface,
                  child: Center(
                    child: Text(
                        'Copyright © 2025 Zheer Barzan. All rights reserved.',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.tertiary)),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
