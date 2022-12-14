import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/main_battlefield_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        backgroundColor: Colors.grey[300],
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        textTheme: TextTheme(
          displayMedium: GoogleFonts.anton(
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          displaySmall: GoogleFonts.anton(
            textStyle: const TextStyle(
              fontSize: 22,
            ),
          ),
          bodyLarge: GoogleFonts.cabin(
            textStyle: const TextStyle(
              fontSize: 19,
            ),
          ),
          bodyMedium: GoogleFonts.cabin(
            textStyle: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
      home: const MainBattlefieldView(),
    );
  }
}
