import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectDesktopView extends StatelessWidget {
  const ProjectDesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: height * 0.8,
        width: width * 0.8,
        color: Colors.yellow,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          AutoSizeText("Projects", style: GoogleFonts.poppins(fontSize: 30)),
        ]),
      ),
    );
  }
}
