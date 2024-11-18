import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas/provider.dart';
import 'package:tugas/settings.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: themeProvider.getTheme(),
      home: const SettingsScreen(),  
    );
  }
}
