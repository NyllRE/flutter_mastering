import 'dart:math';
import 'package:flutter/material.dart';

/// rotating by transforming [angle]
Matrix4 myRotate({
  double x = 0.1,
  double y = 0.1,
  double z = 0.1,
}) {
  return Matrix4.identity()
    ..rotateX(x * pi / 180)
    ..rotateY(y * pi / 180)
    ..rotateZ(z * pi / 180)
    ..setEntry(3, 2, 0.002);
}

/// Uses Transform Rotate to Rotate Through [x, y, z]
class Rotate extends StatelessWidget {
  final Widget child;
  final double? x, y, z;
  final Alignment? align;

  const Rotate({
    Key? key,
    this.x,
    this.y,
    this.z,
    required this.child,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Transform(
        alignment: align ?? Alignment.center,
        transform: myRotate(
          x: x ?? 0,
          y: y ?? 0,
          z: z ?? 0,
        ),
        child: child,
      );
}

EdgeInsets pads = EdgeInsets.symmetric(vertical: 10, horizontal: 15);

EdgeInsets Edge(double l, {double? t, double? r, double? b}) {
  if (t == null && r == null && b == null) {
    return EdgeInsets.all(l);
  } else if (t != null && r == null && b == null) {
    return EdgeInsets.symmetric(vertical: l, horizontal: t);
  } else {
    t = t ?? 0;
    r = r ?? 0;
    b = b ?? 0;
    return EdgeInsets.fromLTRB(l, t, r, b);
  }
}
