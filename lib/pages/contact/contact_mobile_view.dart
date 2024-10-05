import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/components/contact_box.dart';
import 'package:zheer_barzan/components/inverse_button.dart';
import 'package:zheer_barzan/components/neu_box.dart';
import 'package:zheer_barzan/models/contact_item.dart';

class ContactMobileView extends StatelessWidget {
  final double height;
  final double width;
  const ContactMobileView(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return ResponsiveBuilder(
      builder: (context, size) {
        return Container(
            height: height,
            width: width * 0.8,
            color: Theme.of(context).colorScheme.surface,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText("Contact me",
                    style: GoogleFonts.poppins(fontSize: 30)),
                AutoSizeText("Get in touch with me",
                    style: GoogleFonts.poppins(fontSize: 30)),
                const SizedBox(
                  height: 20,
                ),
                NeuBox(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: NeuBox(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/zheer1.JPG",
                                height: isSmall ? imageWidth : 500),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          for (var contact in kContactItems)
                            ContactBox(
                              text: contact.title,
                              image: contact.image,
                              borderColor: contact.borderColor,
                              url: contact.link,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }
}
