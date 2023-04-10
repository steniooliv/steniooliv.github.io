import 'dart:ui';

import 'package:flutter/material.dart';

class STextStyles {
  STextStyles._();

  static TextStyle h36Bold = const TextStyle(
    fontFamily: "Exo 2",
    fontSize: 36,
    fontVariations: [
      FontVariation("wght", 700),
    ],
  );

  static TextStyle h24Bold = const TextStyle(
    fontFamily: "Exo 2",
    fontSize: 24,
    fontVariations: [
      FontVariation("wght", 700),
    ],
  );

  static TextStyle b18Bold = const TextStyle(
    fontFamily: "Exo 2",
    fontFamilyFallback: ["NotoColorEmoji"],
    fontSize: 18,
    fontVariations: [
      FontVariation("wght", 700),
    ],
  );
}
