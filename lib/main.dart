import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class1/counter_provider.dart';
import 'package:provider_class1/main1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => Counters(),)

    ],child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),);
  }
}
