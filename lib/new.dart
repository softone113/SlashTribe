import 'dart:math'; // Import dart:math for math functions like cos, sin, pi
import 'package:flutter/material.dart';

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double radius = size.width / 2;

    for (int i = 0; i < 6; i++) {
      double angle = (pi / 3.0) * i;
      double x = radius + radius * cos(angle); // Use cos from dart:math
      double y = radius + radius * sin(angle); // Use sin from dart:math
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class HexagonImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const HexagonImage({required this.imageUrl, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HexagonClipper(),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
