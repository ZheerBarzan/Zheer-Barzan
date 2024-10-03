import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/pages/project_item.dart';

class ProjectDesktopView extends StatelessWidget {
  final double height;
  final double width;
  final ScrollController _scrollController = ScrollController();
  ProjectDesktopView({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
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
            Scrollbar(
              thumbVisibility: true,
              trackVisibility: true,
              interactive: true,
              thickness: 10,
              radius: const Radius.circular(100),
              controller: _scrollController,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final item in kProjectItems)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 25),
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                item.image,
                                height: 500,
                                width: 500,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 10),
                              AutoSizeText(
                                item.title,
                                style: GoogleFonts.poppins(fontSize: 25),
                                maxLines: 1,
                              ),
                              const SizedBox(height: 10),
                              AutoSizeText(
                                item.description,
                                style: GoogleFonts.poppins(fontSize: 15),
                                maxLines: 3,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  for (final tech in item.technologies)
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Chip(
                                        label: Text(tech),
                                        shape: const StadiumBorder(),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
