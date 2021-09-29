import 'package:flutter/material.dart';
import 'package:lottery/src/pages/home_page.dart';
import 'package:lottery/src/pages/login_page.dart';
import 'package:lottery/src/pages/sell_page.dart';
import 'package:lottery/src/providers/login_provider.dart';
import 'package:lottery/src/providers/sell_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider<SellProvider>(create: (_) => SellProvider([]))
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => SellPage(),
        },
        home: SellPage(),
      ),
    );
  }
}
