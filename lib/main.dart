import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zheer_barzan/pages/views/portfolio_view.dart';
import 'package:zheer_barzan/themes/dark_theme.dart';
import 'package:zheer_barzan/themes/light_theme.dart';
import 'package:zheer_barzan/themes/theme_provider.dart';

void main() async {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(scrollbars: true),
      debugShowCheckedModeBanner: false,
      title: 'Zheer Barzan',
      theme: lightMode,
      darkTheme: darkMode,
      home: const PortfolioView(),
    );
  }
}
