import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zheer_barzan/pages/home_body.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return ResponsiveBuilder(
      builder: (context, size) {
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
                  child: HomeBody(
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
