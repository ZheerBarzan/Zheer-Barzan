import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/pages/desktop/contact_desktop_view.dart';
import 'package:zheer_barzan/pages/mobile/contact_mobile_view.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        return const ContactMobileView();
      }
      return const ContactDesktopView();
    });
  }
}
