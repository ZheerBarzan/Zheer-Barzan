import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/pages/home/home_desktop_view.dart';
import 'package:zheer_barzan/pages/home/home_mobile_view.dart';

class HomeView extends StatelessWidget {
  final double height;
  final double width;
  const HomeView({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        return HomeMobileView(
          height: height,
          width: width,
        );
      }
      return HomeDesktopView(
        height: height,
        width: width,
      );
    });
  }
}
