import 'package:flutter/material.dart';
import 'package:help_desk_fatec/pages/home.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Help Desk Fatec',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xff44545c),
      ),
      home: const MyHome(),
    );
  }
}
