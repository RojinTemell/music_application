import 'package:flutter/material.dart';
import 'package:music_app/features/views/signup_page.dart';
import 'features/views/main_page.dart';


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
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: const MainPage());
  }
}
