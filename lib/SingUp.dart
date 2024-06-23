import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(

  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class MyPainter extends CustomPainter {
  MyPainter({@required sheight});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Colors.orange;
    path = Path();
    path.lineTo(size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height, size.width,
        size.height);
    path.cubicTo(size.width, size.height * 0.73, size.width * 0.96,
        size.height * 0.51, size.width * 0.92, size.height * 0.51);
    path.cubicTo(size.width * 0.92, size.height * 0.51, size.width * 0.08,
        size.height * 0.51, size.width * 0.08, size.height * 0.51);
    path.cubicTo(size.width * 0.04, size.height * 0.51, 0, size.height * 0.73,
        0, size.height);
    path.cubicTo(0, size.height, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(
        size.width, 0, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height, size.width,
        size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

