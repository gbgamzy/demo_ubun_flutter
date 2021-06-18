import 'package:flutter/material.dart';
import './home_page.dart';
import 'login.dart';
import './utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.indigo,
        fontFamily: GoogleFonts.lato().fontFamily

      ),

      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      routes: {
        '/': (context)=> LoginPage(),
        Routes.login: (context) => LoginPage(),
        Routes.home: (context) => HomePage()

      },
    );
  }
}
