import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/neu_box.dart';

class ContactBox extends StatelessWidget {
  final String text;
  final String image;
  final Color borderColor;
  final String? url;
  final Function()? onPressed;

  const ContactBox({
    super.key,
    required this.text,
    required this.image,
    required this.borderColor,
    this.url,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 1200;

    // Calculate image size based on screen width for better scaling
    final double imageHeight =
        isSmall ? MediaQuery.of(context).size.width * 0.04 : 50;
    final double imageWidth =
        isSmall ? MediaQuery.of(context).size.width * 0.04 : 50;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
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
                  // Flexible spacing based on screen size
                  SizedBox(
                    width: isSmall ? imageHeight * 0.4 : imageHeight * 0.6,
                  ),
                  // Display image with error handling
                  Image.asset(
                    image,
                    height: imageHeight,
                    width: imageWidth,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.image_not_supported, size: imageHeight);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
