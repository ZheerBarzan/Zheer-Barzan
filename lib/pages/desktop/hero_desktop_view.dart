import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/pages/hero_body.dart';
import 'package:zheer_barzan/pages/mobile/hero_mobile_view.dart';

class HeroView extends StatelessWidget {
  const HeroView({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile) return const HeroMobileView();
        return Container(
          height: height * 0.8,
          width: width * 0.8,
          color: Theme.of(context).colorScheme.surface,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: HeroBody(
                    isMobile: false,
                  ),
                ),
                FlutterLogo(
                  size: 300,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
