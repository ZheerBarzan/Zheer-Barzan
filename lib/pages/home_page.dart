import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
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
        ),
        drawer: MediaQuery.of(context).size.width <= 600
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
            : null,
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Zheer Barzan',
                        style: GoogleFonts.poppins(fontSize: 30)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
