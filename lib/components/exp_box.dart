import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/neu_box.dart';

class ExpBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const ExpBox(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 1200;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeuBox(
        child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              border: Border.all(
                  color: Theme.of(context).colorScheme.primary, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(children: [
                Icon(icon,
                    color: Theme.of(context).colorScheme.primary, size: 25),
                AutoSizeText(
                  title,
                  style: GoogleFonts.poppins(
                      fontSize: isSmall ? 15 : 20,
                      color: Theme.of(context).colorScheme.primary),
                ),
                AutoSizeText(
                  description,
                  style: GoogleFonts.poppins(
                      fontSize: isSmall ? 6 : 12,
                      color: Theme.of(context).colorScheme.tertiary),
                  maxLines: 5,
                ),
              ]),
            )),
      ),
    );
  }
}
