import 'package:flutter/material.dart';

const Color logoColor =  Color(0xFFA1F1CE);
const Color bgColor =  Color.fromRGBO(205, 241, 221, 1);
const Color orangeColor =  Color(0xFFF04E23);
const Color blueColor =  Color(0xFF152A3D);

final purple = Colors.purple.value.toRadixString(16);
final red =Colors.red.value.toRadixString(16);
final orange = Colors.orange.value.toRadixString(16);
final amber = Colors.amber.value.toRadixString(16);
final blue = Colors.blue.value.toRadixString(16);
final green = Colors.green.value.toRadixString(16);
final lightBlue = Colors.lightBlue.value.toRadixString(16);
final lightGreen = Colors.lightGreen.value.toRadixString(16);
final pink = Colors.pink.value.toRadixString(16);
final teal = Colors.teal.value.toRadixString(16);
final cyan = Colors.cyan.value.toRadixString(16);

var colorList = [
  HexColor(purple),
  HexColor(red),
  HexColor(orange),
  HexColor(amber),
  HexColor(blue),
  HexColor(green),
  HexColor(lightBlue),
  HexColor(lightGreen),
  HexColor(pink),
  HexColor(teal),
  HexColor(cyan)
];

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}