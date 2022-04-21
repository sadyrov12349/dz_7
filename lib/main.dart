import 'package:flutter/material.dart';

import 'about.page.dart';
import 'listArtists.dart';
import 'myHome.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (BuildContext context) => MyHomePage(),
        '/about': (BuildContext context) => AboutPage(),
        '/listArtists': (BuildContext context) => ListArtists(),
      },
      // home: MyHomePage(),
    );
  }
}


