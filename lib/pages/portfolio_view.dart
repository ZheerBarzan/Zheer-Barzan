import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/my_drawer.dart';
import 'package:zheer_barzan/pages/contact/contact_view.dart';
import 'package:zheer_barzan/pages/navigation/navigation_bar_view.dart';
import 'package:zheer_barzan/pages/about/about_view.dart';
import 'package:zheer_barzan/pages/home/home_view.dart';
import 'package:zheer_barzan/pages/projects/project_view.dart';
import 'package:zheer_barzan/pages/skills/skills_view.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(seconds: 1), curve: Curves.easeInOutCubic);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        endDrawer: MyDrawer(
          height: height,
          width: width,
          scrollToSection: scrollToSection,
          aboutKey: aboutKey,
          skillsKey: skillsKey,
          projectKey: projectKey,
          contactKey: contactKey,
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // Pass the scrollToSection function and the GlobalKeys
                NavigationBarView(
                  height: height,
                  width: width,
                  scrollToSection: scrollToSection,
                  aboutKey: aboutKey,
                  skillsKey: skillsKey,
                  projectKey: projectKey,
                  contactKey: contactKey,
                ),
                HomeView(height: height, width: width),
                AboutView(key: aboutKey, height: height, width: width),
                SkillsView(key: skillsKey, height: height, width: width),
                ProjectView(key: projectKey, height: height, width: width),
                ContactView(key: contactKey, height: height, width: width),
                Container(
                  height: height * 0.05,
                  width: width,
                  color: Theme.of(context).colorScheme.surface,
                  child: Center(
                    child: Text(
                        'Copyright © 2025 Zheer Barzan. All rights reserved. made with Flutter',
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
