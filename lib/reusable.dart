import 'dart:math';
import 'package:flutter/material.dart';

/// rotating by transforming [angle]
Matrix4 myRotate({
  double x = 0.1,
  double y = 0.1,
  double z = 0.1,
}) {
  Matrix4 mat = Matrix4.identity()
    ..rotateX(x * pi / 180)
    ..rotateY(y * pi / 180)
    ..rotateZ(z * pi / 180);

  return mat;
}
