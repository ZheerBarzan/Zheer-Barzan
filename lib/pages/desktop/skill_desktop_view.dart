import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zheer_barzan/components/skill_box.dart';
import 'package:zheer_barzan/pages/skills_item.dart';

class SkillDesktopView extends StatelessWidget {
  final double height;
  final double width;
  const SkillDesktopView(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.8,
      width: width * 0.8,
      color: Theme.of(context).colorScheme.surface,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText("Skills", style: GoogleFonts.poppins(fontSize: 30)),
            AutoSizeText("my skills",
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Theme.of(context).colorScheme.tertiary)),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                for (var skill in kSkillsItems)
                  Expanded(
                    child: SkillBox(
                        text: skill.title,
                        image: skill.image,
                        borderColor: skill.borderColor),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
