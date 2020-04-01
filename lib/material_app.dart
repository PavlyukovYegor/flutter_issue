import 'package:flutter/material.dart';
import 'package:flutterissue/sign_in_page.dart';

class MaterialFlexApplication extends StatelessWidget {
  MaterialColor get _primaryColor => Colors.cyan;

  Color get _primaryColorDark => _primaryColor[700];

  Color get _primaryColorLight => _primaryColor[100];

  MaterialAccentColor get _accentColor => Colors.cyanAccent;

  Color get _accentColorDark => _accentColor[700];

  Locale get _defaultLocale => const Locale('en', '');

  ThemeData get _lightTheme => ThemeData(
    primarySwatch: _primaryColor,
    primaryColor: _primaryColor,
    primaryColorDark: _primaryColorDark,
    primaryColorLight: _primaryColorLight,
    primaryColorBrightness: Brightness.light,
    accentColor: _accentColor,
    accentColorBrightness: Brightness.light,
    brightness: Brightness.light,
    focusColor: _primaryColorLight,
    hoverColor: _primaryColor,
    highlightColor: _primaryColor,
    splashColor: _primaryColorDark,
    fontFamily: "Roboto",
    colorScheme: ColorScheme.light(
      primary: _primaryColor,
      primaryVariant: _primaryColorDark,
      secondary: _accentColor,
      secondaryVariant: _accentColorDark,
    ),
  );

  const MaterialFlexApplication({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: _primaryColor,
      title: 'FleX',
      home: SignInPage(),
      theme: _lightTheme,
    );
  }
}
