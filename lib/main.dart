import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/pre_homeScreen.dart';

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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 222, 75, 75)),
        useMaterial3: true,
      ),
      home: Pre_HomeScreen(),
    );
  }
}