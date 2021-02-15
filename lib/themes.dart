import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  Themes(this.context);
  final BuildContext context;
  ThemeData get lightTheme => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Quicksand',
        highlightColor: Colors.transparent,
        scaffoldBackgroundColor: Color(0xff181818),
        primaryColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          color: Colors.white,
        ),
        accentColor: Colors.grey,
        brightness: Brightness.light,
        hintColor: Colors.white60,
        canvasColor: Colors.white,
        cardColor: Colors.white,
        tabBarTheme: TabBarTheme(
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle:
                GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w600),
            labelColor: Colors.grey[800],
            labelPadding: const EdgeInsets.symmetric(vertical: 6),
            labelStyle: GoogleFonts.openSans(
                fontSize: 20, fontWeight: FontWeight.bold)),
        primaryTextTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).primaryTextTheme.copyWith(
                headline1: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                headline2: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                headline3: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                headline4: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.5),
                headline5: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff545E68),
                    letterSpacing: 0.5,
                    fontSize: 18),
                headline6: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                subtitle1:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                subtitle2: TextStyle(fontSize: 14, color: Colors.grey[600]),
                bodyText2:
                    const TextStyle(fontSize: 12, color: Color(0xff4a4a4a)),
                bodyText1: const TextStyle(fontSize: 10),
              ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.copyWith(
                headline4: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                    letterSpacing: 0.5),
                headline5: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff545E68),
                    letterSpacing: 0.5,
                    fontSize: 18),
                headline6: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
                subtitle1:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                subtitle2: TextStyle(fontSize: 14, color: Colors.grey[600]),
                bodyText2:
                    const TextStyle(fontSize: 12, color: Color(0xff4a4a4a)),
                bodyText1: const TextStyle(fontSize: 10),
              ),
        ),
      );
}
