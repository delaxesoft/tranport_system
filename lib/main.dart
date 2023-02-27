import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ui/splash.dart';

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  //await dotenv.load(fileName: "assets/config/.env");
  runApp(MaterialApp(
    title: 'Smart Transport',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        //primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.openSansTextTheme()),
    home: Splash(),
  ));
}
