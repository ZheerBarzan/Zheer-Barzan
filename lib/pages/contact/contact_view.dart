import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/pages/contact/contact_desktop_view.dart';
import 'package:zheer_barzan/pages/contact/contact_mobile_view.dart';

class ContactView extends StatelessWidget {
  final double height;
  final double width;
  const ContactView({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        return ContactMobileView(
          height: height,
          width: width,
        );
      }
      return ContactDesktopView(height: height, width: width);
    });
  }
}
