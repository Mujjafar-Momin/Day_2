
import 'package:demo_project/Pages/login_page.dart';
import 'package:demo_project/Pages/my_home_page.dart';
import 'package:demo_project/SubPages/SearchPage/home.dart';
import 'package:demo_project/bindingwidgetexample/binding_widget_example.dart';
import 'package:flutter/material.dart';

void main() =>runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
