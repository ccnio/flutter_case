import 'package:flutter/material.dart';
import 'package:flutter_case/main_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(home: MainPage());
}