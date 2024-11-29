import 'package:flutter/material.dart';
import 'package:memories/CustomWidgets/CustomButton.dart';
import 'package:memories/CustomWidgets/CustomTextField.dart';
import 'package:memories/Screens/AuthScreen/AuthScreen.dart';
import 'package:memories/Screens/AuthScreen/LoginContent.dart';
import 'package:memories/theme/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: lightTheme,
    darkTheme: darkTheme,
    themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
    home: const AuthScreen(),
  ));
}

