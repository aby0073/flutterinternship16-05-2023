import 'package:flutter/material.dart';
import 'package:untitled/day3/radio.dart';

import 'day3/button_page.dart';
import 'day3/first_page.dart';
import 'day3/registration_form.dart';
import 'day3/second_page.dart';
import 'day3/first_page.dart';
import 'day3/text_field.dart';
import 'package:untitled/registration_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Tb(),
    );
  }
}
