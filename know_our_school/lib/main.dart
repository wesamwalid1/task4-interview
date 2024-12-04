import 'package:flutter/material.dart';
import 'package:know_our_school/View/school_info.dart';
import 'package:provider/provider.dart';

import 'ViewModel/view_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SchoolViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'know our school',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SchoolInfo(),
    );
  }
}
