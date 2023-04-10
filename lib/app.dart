import 'package:flutter/material.dart';
import 'package:steniooliv/src/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "steniooliv",
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
