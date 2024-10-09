import 'package:flutter/material.dart';
import 'package:zheer_barzan/components/copyright.dart';

import 'package:zheer_barzan/components/my_drawer.dart';
import 'package:zheer_barzan/pages/about/about_view.dart';
import 'package:zheer_barzan/pages/contact/contact_view.dart';
import 'package:zheer_barzan/pages/home/home_view.dart';
import 'package:zheer_barzan/pages/navigation/navigation_bar_view.dart';
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

  // Method to scroll to the section corresponding to the provided GlobalKey
  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
  }

  // Properly dispose of the ScrollController to prevent memory leaks
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
              // Navigation Bar at the top with links to each section
              NavigationBarView(
                height: height,
                width: width,
                scrollToSection: scrollToSection,
                aboutKey: aboutKey,
                skillsKey: skillsKey,
                projectKey: projectKey,
                contactKey: contactKey,
              ),
              // Different sections of the portfolio
              HomeView(height: height, width: width),
              AboutView(key: aboutKey, height: height, width: width),
              SkillsView(key: skillsKey, height: height, width: width),
              ProjectView(key: projectKey, height: height, width: width),
              ContactView(key: contactKey, height: height, width: width),
              // Footer Section
              copyright(height: height, width: width)
            ],
          ),
        ),
      ),
    );
  }
}
