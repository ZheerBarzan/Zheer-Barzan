import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/pages/desktop/project_desktop_view.dart';
import 'package:zheer_barzan/pages/mobile/project_mobile_view.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        return const ProjectMobileView();
      }
      return const ProjectDesktopView();
    });
  }
}
