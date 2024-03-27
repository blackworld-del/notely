import 'package:flutter/material.dart';
import 'package:notely/constants/colors.dart';

void main(List<String> args) {
  runApp(
    const NotelyApp(),
  );
}

class NotelyApp extends StatelessWidget {
  const NotelyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: NotelyColors.primaryColor,
        useMaterial3: true,
        fontFamily: "Nunito",
        primaryColor: NotelyColors.buttonTextColor,
      ),
    );
  }
}
