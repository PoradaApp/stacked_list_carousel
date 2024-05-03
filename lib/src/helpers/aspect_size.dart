import 'dart:math';

import 'package:flutter/animation.dart';

Size aspectSize({
  required double height,
  required double width,
  required double aspectRatio,
  double scaleFactor = 1,
  required double firstCardScaleFactor,
}) {
  final finalHeight = min(width / aspectRatio, height);

  final size = Size(finalHeight * aspectRatio, finalHeight) * scaleFactor;
  return Size(size.width, size.height * firstCardScaleFactor);
}
