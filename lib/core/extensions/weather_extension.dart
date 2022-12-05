import 'package:flutter/material.dart';

extension WeatherExtension on double {
  Color tempColor() {
    if(double.negativeInfinity <= this && this <= 0.0) {
      return const Color(0xFF1976D2);
    }
    if(0.0 <= this && this <= 15.0) {
      return const Color(0xFF26C6DA);
    }
    if(15.0 <= this && this <= 30.0)  {
      return const Color(0xFF66BB6A);
    }
    return const Color(0xFFFF7063);
  }
}