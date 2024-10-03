import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/pages/desktop/home_desktop_view.dart';
import 'package:zheer_barzan/pages/mobile/home_mobile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        return const HomeMobileView();
      }
      return const HomeDesktopView();
    });
  }
}
