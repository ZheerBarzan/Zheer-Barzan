import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBarItem extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const NavigationBarItem(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 850;
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: TextButton(
          onPressed: onPressed,
          child: AutoSizeText(
            text,
            style: GoogleFonts.poppins(fontSize: isSmall ? 15 : 30),
          )),
    );
  }
}
