import 'package:flutter/material.dart';
import 'package:hexagram/initial_screens/initial_screen.dart';
import 'package:hexagram/provider/theme_provider.dart';
import 'package:hexagram/provider/account_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AccountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: prov.enableDarkMode == true ? prov.dark : prov.light,
      home: InitialScreen(),
    );
  }
}
