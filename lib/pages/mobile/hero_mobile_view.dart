import 'package:flutter/material.dart';
import 'package:zheer_barzan/pages/hero_body.dart';

class HeroMobileView extends StatelessWidget {
  const HeroMobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.8,
      width: width,
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Expanded(child: Image.asset("assets/zheer1.png", height: 300)),
            const HeroBody(
              isMobile: true,
            ),
          ],
        ),
      ),
    );
  }
}
