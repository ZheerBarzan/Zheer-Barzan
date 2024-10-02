import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/pages/project_item.dart';

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
      child: SizedBox(
        height: height * 0.8,
        width: width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText("Projects", style: GoogleFonts.poppins(fontSize: 30)),
            AutoSizeText(
              "my works",
              style: GoogleFonts.poppins(fontSize: 30),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (final item in kProjectItems)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          item.image,
                          height: 300,
                          width: 300,
                        ),
                        AutoSizeText(
                          item.title,
                          style: GoogleFonts.poppins(fontSize: 30),
                        ),
                        AutoSizeText(
                          item.description,
                          style: GoogleFonts.poppins(fontSize: 25),
                        ),
                        Row(children: [
                          for (final tech in item.technologies)
                            Chip(label: Text(tech))
                        ])
                      ],
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
