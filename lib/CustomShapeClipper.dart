import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper {
  @override
  getClip(Size size) {
    return null;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;

}