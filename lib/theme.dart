import 'package:flutter/material.dart';

final Color primaryColor = Colors.white;
final Color secondaryColor = Color.fromRGBO(37,206,199, 1);

ThemeData theme = ThemeData(
  // This is the theme of your application.
  //
  // Try running your application with "flutter run". You'll see the
  // application has a blue toolbar. Then, without quitting the app, try
  // changing the primarySwatch below to Colors.green and then invoke
  // "hot reload" (press "r" in the console where you ran "flutter run",
  // or simply save your changes to "hot reload" in a Flutter IDE).
  // Notice that the counter didn't reset back to zero; the application
  // is not restarted.

    inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          fontSize: 16.0,
          color: secondaryColor,
        ),

        focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: secondaryColor)),
        enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: secondaryColor))),
    primaryColor: primaryColor,
    brightness: Brightness.light,
    accentColor: secondaryColor,
    appBarTheme: AppBarTheme(
        brightness: Brightness.light,
        textTheme: TextTheme(
            title: TextStyle(
                color: secondaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w700))),
    secondaryHeaderColor: secondaryColor,
    textTheme: TextTheme(
        headline: TextStyle(color: secondaryColor),
        title: TextStyle(color: secondaryColor)));
