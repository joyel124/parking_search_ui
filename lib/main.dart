import 'package:flutter/material.dart';
import 'package:parking_search_ui/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking Search UI',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
