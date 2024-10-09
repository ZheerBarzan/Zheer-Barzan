import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/skill_box.dart';
import 'package:zheer_barzan/models/skills_item.dart';
import 'package:zheer_barzan/pages/skills/skill_mobile_view.dart';

class SkillDesktopView extends StatelessWidget {
  final double height;
  final double width;
  const SkillDesktopView(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width * 0.8,
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AutoSizeText(
            "Skills",
            style: GoogleFonts.poppins(fontSize: 30),
          ),
          AutoSizeText(
            "my skills",
            style: GoogleFonts.poppins(
              fontSize: 30,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 800) {
                  // For larger screens, show in rows (2 or more columns)
                  return GridView.count(
                    crossAxisCount: 3, // Adjust this value based on screen size
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 5, // Adjust to shrink/grow skill boxes
                    children: [
                      for (var skill in kSkillsItems)
                        SkillBox(
                          text: skill.title,
                          image: skill.image,
                          borderColor: skill.borderColor,
                        ),
                    ],
                  );
                } else {
                  // For smaller screens, show in a column
                  return SkillMobileView(height: height, width: width);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
