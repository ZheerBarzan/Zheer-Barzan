import 'package:flutter/material.dart';

class ProjectDesktopView extends StatelessWidget {
  const ProjectDesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return Container(
      height: height * 0.8,
      width: width * 0.8,
      color: Colors.yellow,
    );
  }
}
