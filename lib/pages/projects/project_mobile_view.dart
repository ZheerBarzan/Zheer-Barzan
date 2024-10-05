import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/inverse_button.dart';
import 'package:zheer_barzan/components/neu_box.dart';
import 'package:zheer_barzan/models/project_item.dart';

class ProjectMobileView extends StatelessWidget {
  final double height;
  final double width;
  final ScrollController _scrollController = ScrollController();
  ProjectMobileView({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        height: height * 0.9,
        width: width * 0.8,
        child: Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText("Projects",
                  style: GoogleFonts.poppins(fontSize: 30)),
              AutoSizeText(
                "my works",
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Theme.of(context).colorScheme.tertiary),
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
                          child: NeuBox(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      item.image,
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    ),
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
                                  const SizedBox(height: 10),
                                  Center(
                                    child: InverseButton(
                                        text: "GitHub Link",
                                        secondaryColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontColor: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                        onPressed: () {}),
                                  ),
                                ],
                              ),
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
      ),
    );
  }
}
