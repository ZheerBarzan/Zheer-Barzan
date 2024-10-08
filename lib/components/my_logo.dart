import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Theme.of(context).colorScheme.surface,
      child: Image.asset("assets/Z.png"),
    );
  }
}
