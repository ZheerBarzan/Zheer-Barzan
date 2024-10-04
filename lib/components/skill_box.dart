import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:zheer_barzan/components/neu_box.dart';

class SkillBox extends StatelessWidget {
  final String text;
  final String image;
  final Color borderColor;
  const SkillBox(
      {super.key,
      required this.text,
      required this.image,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 1200;
    const double imageHeight = 50;
    const double imageWidth = 50;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeuBox(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AutoSizeText(
                  text,
                  style: GoogleFonts.poppins(fontSize: isSmall ? 15 : 20),
                  maxLines: 1,
                ),
                SizedBox(
                  width: isSmall ? 7 : 15,
                ),
                SvgPicture.asset(
                  image,
                  height: isSmall ? imageHeight * 0.47 : imageHeight,
                  width: isSmall ? imageWidth * 0.47 : imageWidth,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
