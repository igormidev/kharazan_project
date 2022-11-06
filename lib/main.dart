import 'package:flutter/material.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/main_battlefield_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        backgroundColor: Colors.grey[300],
      ),
      home: const MainBattlefieldView(),
    );
  }
}
