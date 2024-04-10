import 'package:flutter/material.dart';
import 'package:notely/constants/colors.dart';
import 'package:notely/data/api/auth_api.dart';
import 'package:notely/view/onBoarding_screen.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await AuthApi.authInitApi();
  runApp(
    const NotelyApp(),
  );
}

class NotelyApp extends StatelessWidget {
  const NotelyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotelyOnBoardingScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: NotelyColors.primaryColor,
        ),
        scaffoldBackgroundColor: NotelyColors.primaryColor,
        useMaterial3: true,
        fontFamily: "Nunito",
      ),
    );
  }
}
