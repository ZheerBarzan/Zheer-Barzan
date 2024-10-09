import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/skill_box.dart';
import 'package:zheer_barzan/models/skills_item.dart';
import 'package:zheer_barzan/pages/skills/skill_desktop_view.dart';

class SkillMobileView extends StatelessWidget {
  final double height;
  final double width;
  const SkillMobileView({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AutoSizeText("Skills", style: GoogleFonts.poppins(fontSize: 30)),
          AutoSizeText("my skills",
              style: GoogleFonts.poppins(
                  fontSize: 30, color: Theme.of(context).colorScheme.tertiary)),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 800) {
                  return ListView(
                    children: [
                      for (var skill in kSkillsItems)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: SkillBox(
                            text: skill.title,
                            image: skill.image,
                            borderColor: skill.borderColor,
                          ),
                        ),
                    ],
                  );
                } else {
                  return SkillDesktopView(height: height, width: width);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
