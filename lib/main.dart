import 'package:flutter/material.dart';
import 'package:telegram_clone/screens/home.dart';
import 'package:telegram_clone/utils/color.dart';

void main() {
  runApp(TelegramClone());
}

class TelegramClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: PacificBlue,
        accentColor: PacificBlue,
        brightness: Brightness.light,
      ),
      home: HomePage(title: 'Telegram'),
    );
  }
}
