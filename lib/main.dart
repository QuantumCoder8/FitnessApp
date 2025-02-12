

import 'package:fitness_tracker_app/pages/details/details.dart';
import 'package:fitness_tracker_app/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker',
      theme: ThemeData(
        fontFamily: 'Roboto',
        textTheme: const TextTheme(headlineMedium: TextStyle(
          fontSize: 14,
          color:Colors.black,
          fontWeight: FontWeight.w900
        ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>const HomePage(),
        '/details':(context)=>const DetailsPage(),
      },
      initialRoute: '/',
    );
  }
}
