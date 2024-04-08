import 'package:flutter/material.dart';
import 'screens/pages/views/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(scrolledUnderElevation: 0),
        colorScheme: const ColorScheme.light(
        background: Color.fromRGBO(250, 250, 250, 1),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}


