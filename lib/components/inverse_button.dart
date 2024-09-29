import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InverseButton extends StatelessWidget {
  final Color fontColor;
  final String text;
  final Color secondaryColor;

  final void Function()? onPressed;
  const InverseButton(
      {super.key,
      required this.text,
      this.onPressed,
      required this.secondaryColor,
      required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            side: BorderSide(width: 2, color: fontColor),
            backgroundColor: secondaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.poppins(color: fontColor),
        ),
      ),
    );
  }
}
