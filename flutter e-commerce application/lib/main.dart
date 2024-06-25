import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_eticaret/PageGetStared.dart';
import 'package:flutter_eticaret/PageCategories.dart';
import 'package:flutter_eticaret/PageHome.dart';
import 'package:flutter_eticaret/PageSearch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFFF5F6F8), // status bar color
      systemNavigationBarColor: Color(0xFFF5F6F8), // navigation bar color
    ));
    return MaterialApp(
      title: 'Flutter E-Ticaret Demo',
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF5F6F8)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => PageGetStared(),
        '/PageHome': (context) => PageHome(),
        '/PageAllCategories': (context) => PageAllCategories(),
        '/PageSearchResult': (context) => PageSearchResult(),
      },
    );
  }
}
