import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/inverse_button.dart';

class HomeMobileView extends StatelessWidget {
  final double height;
  final double width;
  const HomeMobileView({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.8,
      width: width,
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Expanded(child: Image.asset("assets/zheer1.png", height: 300)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText('Hello I\'m ',
                    style: GoogleFonts.poppins(fontSize: 30), maxLines: 1),
                AutoSizeText('Zheer Barzan',
                    style: GoogleFonts.poppins(fontSize: 30), maxLines: 1),
                AutoSizeText('Software Engineer</>',
                    style: GoogleFonts.poppins(fontSize: 30), maxLines: 1),
                const SizedBox(
                  height: 20,
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
            )
          ],
        ),
      ),
    );
  }
}
