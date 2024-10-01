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
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile) return const HeroMobileView();
        return Container(
          height: height * 0.8,
          width: width * 0.8,
          color: Theme.of(context).colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(
                  child: HeroBody(
                    isMobile: false,
                  ),
                ),
                Image.asset("assets/zheer1.png",
                    height: isSmall ? imageWidth : 500),
              ],
            ),
          ),
        );
      },
    );
  }
}
