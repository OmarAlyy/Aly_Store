import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height);

    // First curve (left bump)
    final firstControlPoint = Offset(0, size.height - 20);
    final firstEndPoint = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstControlPoint.dx, firstControlPoint.dy,
      firstEndPoint.dx, firstEndPoint.dy,
    );

    // Second curve (middle smooth slope)
    final secondControlPoint = Offset(0, size.height - 20);
    final secondEndPoint = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
      secondControlPoint.dx, secondControlPoint.dy,
      secondEndPoint.dx, secondEndPoint.dy,
    );

    // Third curve (right bump)
    final thirdControlPoint = Offset(size.width, size.height - 20);
    final thirdEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
      thirdControlPoint.dx, thirdControlPoint.dy,
      thirdEndPoint.dx, thirdEndPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
