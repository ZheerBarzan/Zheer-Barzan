import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/components/exp_box.dart';
import 'package:zheer_barzan/components/neu_box.dart';
import 'package:zheer_barzan/models/exp_item.dart';

class AboutDesktopView extends StatelessWidget {
  final double height;
  final double width;
  const AboutDesktopView(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return ResponsiveBuilder(
      builder: (context, size) {
        return Container(
          height: height,
          width: width * 0.8,
          color: Theme.of(context).colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AutoSizeText("About", style: GoogleFonts.poppins(fontSize: 30)),
                AutoSizeText("Who is me?",
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        color: Theme.of(context).colorScheme.tertiary)),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NeuBox(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/zheer2.JPG",
                            height: isSmall ? imageWidth : 500),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    // Wrap the following with Expanded to give it flexible space
                    Expanded(
                      child: Column(
                        children: [
                          Wrap(
                            spacing: 10, // Add some spacing between the items
                            runSpacing: 10, // Add spacing for the next line
                            children: [
                              for (var exp in kExpItems)
                                ExpBox(
                                    icon: exp.icon,
                                    title: exp.title,
                                    description: exp.description),
                            ],
                          ),
                          const AutoSizeText("im zheer")
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
