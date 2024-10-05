import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/pages/about/about_desktop_view.dart';
import 'package:zheer_barzan/pages/about/about_mobile_view.dart';

class AboutView extends StatelessWidget {
  final double height;
  final double width;
  const AboutView({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        return AboutMobileView(
          height: height,
          width: width,
        );
      }
      return AboutDesktopView(
        height: height,
        width: width,
      );
    });
  }
}
