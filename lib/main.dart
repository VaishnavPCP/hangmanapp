import 'package:flutter/material.dart';
import 'package:hangmanapp/homepage.dart';

void main() {
  runApp(const Hang());
}
class Hang extends StatefulWidget {
  const Hang({Key? key}) : super(key: key);

  @override
  State<Hang> createState() => _HangState();
}

class _HangState extends State<Hang> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
