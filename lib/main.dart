import 'package:flutter/material.dart';
import 'package:koperasi/screens/dashboard.dart';
import 'package:koperasi/screens/login.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
      },
      home: const Scaffold(
        body: DashboardPage(),
      ),
    );
  }
}
