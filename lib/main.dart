import 'package:badmintonweb/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:badmintonweb/controllers/menu_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(MyApp());
}

/// Let's start to make responsive website
/// First make app responsive class

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: HomePage(
        // providers: [
        //   ChangeNotifierProvider(create: (context) => MenuController()),
        // ],
        // child: HomePage(),
      ),
    );
  }
}