import 'package:flutter/material.dart';

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
      theme: ThemeData.light().copyWith(),
    );
  }
}
