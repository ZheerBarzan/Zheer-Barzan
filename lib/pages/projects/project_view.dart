import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/pages/projects/project_desktop_view.dart';
import 'package:zheer_barzan/pages/projects/project_mobile_view.dart';

class ProjectView extends StatelessWidget {
  final double height;
  final double width;
  const ProjectView({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        return ProjectMobileView(
          height: height,
          width: width,
        );
      }
      return ProjectDesktopView(
        height: height,
        width: width,
      );
    });
  }
}
