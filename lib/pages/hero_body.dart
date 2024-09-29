import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/inverse_button.dart';

class HeroBody extends StatelessWidget {
  final bool isMobile;
  const HeroBody({
    super.key,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText('Hello I\'m ',
            style: GoogleFonts.poppins(fontSize: 30), maxLines: 1),
        AutoSizeText('Zheer Barzan',
            style: GoogleFonts.poppins(fontSize: 30), maxLines: 1),
        AutoSizeText('Software Engineer</>',
            style: GoogleFonts.poppins(fontSize: 30), maxLines: 1),
        SizedBox(
          height: isMobile ? 20 : 30,
        ),
        Row(
          children: [
            InverseButton(
                text: "Download CV",
                secondaryColor: Theme.of(context).colorScheme.surface,
                fontColor: Theme.of(context).colorScheme.primary,
                onPressed: () {}),
            InverseButton(
                fontColor: Theme.of(context).colorScheme.primary,
                secondaryColor: Theme.of(context).colorScheme.surface,
                text: "Contact me",
                onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
