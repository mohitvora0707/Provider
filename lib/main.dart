import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/home.dart';
import 'package:untitled4/provider/home_provider.dart';
import 'package:untitled4/provider/login_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => HomeProvider()),
          ChangeNotifierProvider(create: (_) => LoginProvider()),
        ],
        child: Home(),
      ),
    );
  }
}
