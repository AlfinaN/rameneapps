import 'package:flutter/material.dart';
import 'package:rameneapps/home_page.dart';
import 'package:rameneapps/login_.dart';
import 'package:rameneapps/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
