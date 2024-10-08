import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:zheer_barzan/components/inverse_button.dart';

class DownloadCVButton extends StatelessWidget {
  const DownloadCVButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InverseButton(
      onPressed: () {
        downloadCV();
      },
      text: 'Download CV',
      fontColor: Theme.of(context).colorScheme.primary,
      secondaryColor: Theme.of(context).colorScheme.surface,
    );
  }

  void downloadCV() {
    const url = '/assets/zheer-barzan.pdf'; // Correct the path for web
    final anchor = html.AnchorElement(href: url)
      ..setAttribute("download", "zheer_barzan.pdf")
      ..click(); // Simulate a click on the anchor to trigger the download
  }
}
