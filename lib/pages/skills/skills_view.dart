import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/pages/skills/skill_desktop_view.dart';
import 'package:zheer_barzan/pages/skills/skill_mobile_view.dart';

class SkillsView extends StatelessWidget {
  final double height;
  final double width;
  const SkillsView({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        return SkillMobileView(
          height: height,
          width: width,
        );
      }
      return SkillDesktopView(
        height: height,
        width: width,
      );
    });
  }
}
