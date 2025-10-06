import 'package:flutter/material.dart';
import 'package:flutter_dummy/screens/dynamic_content_change/dynamic_content_change_sreen.dart';
import 'package:flutter_dummy/screens/dynamic_content_change/updated_change_screen_content.dart';
import 'package:flutter_dummy/screens/media_query/media_query_screen.dart';
import 'package:flutter_dummy/screens/media_query/media_query_sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Change Dynamic content change',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MediaQuerySignInScreen()
      //MediaQueryScreen()
      //UpdatedChangeScreenContent()
    );
  }
}

