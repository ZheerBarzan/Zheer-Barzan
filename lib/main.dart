import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zheer_barzan/pages/views/portfolio_view.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Zheer Barzan',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const PortfolioView(),
    );
  }
}
