import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/my_drawer.dart';
import 'package:zheer_barzan/pages/navigation/navigation_bar_view.dart';
import 'package:zheer_barzan/pages/views/home_view.dart';
import 'package:zheer_barzan/pages/views/project_view.dart';
import 'package:zheer_barzan/pages/views/skills_view.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final ScrollController scrollController = ScrollController();
    return SafeArea(
      child: Scaffold(
        endDrawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                NavigationBarView(height: height, width: width),
                HomeView(height: height, width: width),
                SkillsView(height: height, width: width),
                ProjectView(height: height, width: width),
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
