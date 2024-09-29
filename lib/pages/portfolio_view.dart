import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/pages/desktop/hero_desktop_view.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        /* appBar: AppBar(
          title: Text('Zheer Barzan', style: GoogleFonts.poppins(fontSize: 30)),
          actions: [
            if (MediaQuery.of(context).size.width > 600) ...[
              TextButton(
                onPressed: () {},
                child: Text('About', style: GoogleFonts.poppins(fontSize: 30)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Experience',
                    style: GoogleFonts.poppins(fontSize: 30)),
              ),
              TextButton(
                onPressed: () {},
                child:
                    Text('Projects ', style: GoogleFonts.poppins(fontSize: 30)),
              ),
              TextButton(
                onPressed: () {},
                child:
                    Text('Contact', style: GoogleFonts.poppins(fontSize: 30)),
              ),
            ]
          ],
        ),*/
        /*drawer: MediaQuery.of(context).size.width <= 600
            ? Drawer(
                child: ListView(
                  children: [
                    TextButton(onPressed: () {}, child: const Text('Home')),
                    TextButton(onPressed: () {}, child: const Text('About')),
                    TextButton(
                        onPressed: () {}, child: const Text('Experience')),
                    TextButton(onPressed: () {}, child: const Text('Projects')),
                    TextButton(onPressed: () {}, child: const Text('Contact')),
                  ],
                ),
              )
            : null,*/
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
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
