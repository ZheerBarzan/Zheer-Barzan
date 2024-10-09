import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zheer_barzan/themes/theme_provider.dart';

class ToggleThemeButton extends StatelessWidget {
  const ToggleThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<ThemeProvider>(context).isDarkMode;
    return IconButton(
        icon: isDark
            ? const Icon(
                FluentIcons.weather_sunny_20_filled,
                color: Colors.amber,
              )
            : const Icon(FluentIcons.weather_moon_20_filled,
                color: Colors.grey),
        onPressed: () {
          Provider.of<ThemeProvider>(context, listen: false).toggleThemeMode();
        });
  }
}
