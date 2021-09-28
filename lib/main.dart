import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lottery/src/pages/home_page.dart';
import 'package:lottery/src/pages/login_page.dart';
import 'package:lottery/src/providers/login_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LoginProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
        home: HomePage(),
      ),
    );
  }
}
