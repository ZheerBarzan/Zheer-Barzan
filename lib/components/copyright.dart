import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class copyright extends StatelessWidget {
  const copyright({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.05,
      width: width,
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Copyright © 2025 Zheer Barzan. Made with Flutter & Dart.',
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            const Icon(
              Icons.favorite,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
