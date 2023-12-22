import 'package:flutter/material.dart';

ButtonStyle zCustomButtonStyle(double radius) {
  return ElevatedButton.styleFrom(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}
