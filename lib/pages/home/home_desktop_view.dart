import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/components/inverse_button.dart';
import 'package:zheer_barzan/components/neu_box.dart';

class HomeDesktopView extends StatelessWidget {
  final double height;
  final double width;
  const HomeDesktopView({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return ResponsiveBuilder(
      builder: (context, size) {
        return Container(
          height: height * 0.8,
          width: width * 0.8,
          color: Theme.of(context).colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText('Hello I\'m ',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: Theme.of(context).colorScheme.primary),
                        maxLines: 1),
                    AutoSizeText('Zheer Barzan',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: Theme.of(context).colorScheme.primary),
                        maxLines: 1),
                    AutoSizeText('Software Engineer</>',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: Theme.of(context).colorScheme.primary),
                        maxLines: 1),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        InverseButton(
                            text: "Download CV",
                            secondaryColor:
                                Theme.of(context).colorScheme.surface,
                            fontColor: Theme.of(context).colorScheme.primary,
                            onPressed: () {}),
                        InverseButton(
                            fontColor: Theme.of(context).colorScheme.primary,
                            secondaryColor:
                                Theme.of(context).colorScheme.surface,
                            text: "Contact me",
                            onPressed: () {}),
                      ],
                    ),
                  ],
                )),
                NeuBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/zheer1.JPG",
                        height: isSmall ? imageWidth : 500),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
