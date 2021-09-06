import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  late double _width, _height, _diagonal;

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;

  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    this._width = size.width;
    this._height = size.height;

    // c2+a2+b2 => c = srt(a2+b2)
    this._diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));
  }
  double diagonalPercent(double percent) => _diagonal * percent / 100;
  double widthPercent(double percent)    => _diagonal * percent / 100;
  double heightPercent(double percent)   => _diagonal * percent / 100;
}
