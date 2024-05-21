import 'package:flutter/material.dart';
import 'package:flutter_imithon_2_oy/pages/entry_page.dart';
import 'package:flutter_imithon_2_oy/pages/explore_page.dart';
import 'package:flutter_imithon_2_oy/pages/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      home: EntryPage(),
    );
  }
}
