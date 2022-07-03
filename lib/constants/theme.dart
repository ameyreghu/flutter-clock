// ignore_for_file: unnecessary_const

import 'dart:math';

import 'package:flutter/material.dart';

class CustomColors {
  static Color primaryTextColor = Colors.white;
  static Color dividerColor = Colors.white54;
  static Color pageBackgroundColor = Color(0xFF2D2F41);
  static Color menuBackgroundColor = Color(0xFF242634);

  static Color clockBG = Color(0xFF444974);
  static Color clockOutline = Color(0xFFEAECFF);
  static Color secHandColor = Colors.orange.shade300;
  static Color minHandStatColor = Color(0xFF748EF6);
  static Color minHandEndColor = Color(0xFF77DDFF);
  static Color hourHandStatColor = Color(0xFFC279FB);
  static Color hourHandEndColor = Color(0xFFEA74AB);
}

class GradientColors {
  static var sky = const LinearGradient(
      colors: [Color(0xFF6448FE), const Color(0xFF5FC6FF)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static var sunset = const LinearGradient(
      colors: [Color(0xFFFE6197), Color(0xFFFFB463)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static var sea = const LinearGradient(
      colors: [Color(0xFF61A3FE), Color(0xFF63FFD5)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static var mango = const LinearGradient(
      colors: [const Color(0xFFFFA738), const Color(0xFFFFE130)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static var fire = const LinearGradient(
      colors: [Color(0xFFFF5DCD), const Color(0xFFFF8484)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
}

class UsedColors {
  static List<Color> sky = [Color(0xFF6448FE), Color(0xFF5FC6FF)];

  static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];

  static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
  static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];

  static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];
}

class UsedGradientList {
  LinearGradient gradient;
  List<Color> color;
  UsedGradientList(this.gradient, this.color);

  static var skyg = const LinearGradient(
      colors: [Color(0xFF6448FE), const Color(0xFF5FC6FF)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static var sunsetg = const LinearGradient(
      colors: [Color(0xFFFE6197), Color(0xFFFFB463)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static var seag = const LinearGradient(
      colors: [Color(0xFF61A3FE), Color(0xFF63FFD5)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static var mangog = const LinearGradient(
      colors: [const Color(0xFFFFA738), const Color(0xFFFFE130)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static var fireg = const LinearGradient(
      colors: [Color(0xFFFF5DCD), const Color(0xFFFF8484)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);

  static List<Color> sky = [Color(0xFF6448FE), Color(0xFF5FC6FF)];

  static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];

  static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
  static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];

  static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];

  static List<UsedGradientList> usedColorList = [
    UsedGradientList(skyg, sky),
    UsedGradientList(sunsetg, sunset),
    UsedGradientList(seag, sea),
    UsedGradientList(mangog, mango),
    UsedGradientList(fireg, fire),
  ];

  static UsedGradientList get itemUGL {
    var rnd = Random();
    int max = 4;
    int i = rnd.nextInt(max);
    return usedColorList[1];
  }
}
