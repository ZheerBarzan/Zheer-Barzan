import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/download_cv_button.dart';
import 'package:zheer_barzan/components/neu_box.dart';

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
      height: height,
      width: width,
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            NeuBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/zheer1.JPG",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
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
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DownloadCVButton(),
                    SizedBox(
                      width: 20,
                    ),
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
