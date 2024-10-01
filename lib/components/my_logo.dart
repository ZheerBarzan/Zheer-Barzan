import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Theme.of(context).colorScheme.surface,
      child: Row(children: [
        AutoSizeText("ZB",
            style: GoogleFonts.poppins(
                fontSize: 30, color: Theme.of(context).colorScheme.primary)),
        AutoSizeText(" </>",
            style: GoogleFonts.poppins(
                fontSize: 30, color: Theme.of(context).colorScheme.secondary)),
      ]),
    );
  }
}
