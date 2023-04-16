import 'package:church_app_prototype/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChurchApp());
}

class ChurchApp extends StatelessWidget {
  const ChurchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const Onboarding(),
    );
  }
}
