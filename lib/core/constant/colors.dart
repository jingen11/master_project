import 'package:flutter/material.dart';

const Color kLightPrimary = Color(0xFF1E40AF);
const Color kLightAccent = Color(0xFF6279C7);
const Color kLightCanvas = Color(0xFFECEDF4);
const Color kLightTextColor = Color(0xFF060D23);
const Color kLightPlaceholder = Color(0xFFF3F4FB);
const Color kLightPlaceholderText = Color(0xFF152D7A);
const Color kLightBg = Color(0xFFF8FAFC);
const Color kLightError = Color(0xFFEF4444);

const Color kDarkPrimary = Color(0xFF1B48DC);
const Color kDarkAccent = Color(0xFF456EF6);
const Color kDarkCanvas = Color(0xFF18202B);
const Color kDarkTextColor = Color(0xFFEBEAF6);
const Color kDarkPlaceholder = Color(0xFF161D26);
const Color kDarkPlaceholderText = Color(0xFF5D70AF);
const Color kDarkBg = Color(0xFF10161D);
const Color kDarkError = Color(0xFFD0524A);

const kLightShimmerGradient = LinearGradient(
  colors: [
    Colors.transparent,
    kLightBg,
    Colors.transparent,
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
);

const kDarkShimmerGradient = LinearGradient(
  colors: [
    Colors.transparent,
    kDarkBg,
    Colors.transparent,
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
);

const List<Color> kGraphThemeColor = [
  Color(0xFF022c7c),
  Color(0xFF6496b1),
  Color(0xFF55c484),
  Color(0xFFfabf45),
  Color(0xFFf06a37),
  Color(0xFFf04245),
  Color(0xFF732b63),
];

const List<double> kGradientStops = [0.0, 0.5, 1.0];
