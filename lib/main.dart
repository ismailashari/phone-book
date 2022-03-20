import 'package:flutter/material.dart';
import 'package:phone_book/ui/page/detail_screen/detail_screen.dart';
// import 'package:phone_book/ui/page/favorite_screen/favorite__screen.dart';
// import 'package:phone_book/ui/page/home_screen/contact_page.dart';
// import 'package:phone_book/ui/page/sign_in/signin.dart';
// import 'package:phone_book/ui/page/sign_up/signup.dart';
// import 'package:phone_book/ui/page/recent_screen/recent_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Phone Book',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Roboto',
        ),
        home: const DetailPage());
  }
}
