import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oriflame_app/view/product_details.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

///MyApp class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: const Color.fromARGB(255, 152, 179, 219),
        primaryColor: const Color(0xFF6688bb),
      ),
      home: const ProductDetailPage(),
    );
  }
}
