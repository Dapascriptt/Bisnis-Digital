import 'package:flutter/material.dart';
import 'auth/splash.dart'; // Import SplashPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FireGuard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(), // Set halaman SplashPage sebagai halaman awal
    );
  }
}
