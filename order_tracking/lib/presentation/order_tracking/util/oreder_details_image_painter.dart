import 'package:flutter/material.dart' hide Image;

///@author Jalal Addin Okbi

class OrderDetailsImagePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final p = Path();
    p.moveTo(0, size.height);
    p.lineTo(size.width / 2, size.height / 2);
    p.lineTo(size.width, size.height);
    p.close();
    canvas.drawPath(p, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
