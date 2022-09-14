import 'package:flutter/material.dart';
import 'package:flutter_week8/text_page.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //1.constructor

  @override
  Widget build(BuildContext context) { //2.build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextPage(),
    );
  }
}