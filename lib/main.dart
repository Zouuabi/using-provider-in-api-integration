import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wehd_jdid/presentation/home/home_provider.dart';

import 'presentation/home/home_screen.dart';

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
      theme: ThemeData.dark(),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ], child: HomeScreen()),
    );
  }
}
