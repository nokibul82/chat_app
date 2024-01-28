import './screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: const Color(0xFF075E54),
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.sizeOf(context).width * 0.06),
            iconTheme: const IconThemeData(color: Colors.white)),
        useMaterial3: false,
      ),
      home: HomeScreen(),
    );
  }
}
