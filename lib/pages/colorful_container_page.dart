import 'dart:math';

import 'package:flutter/material.dart';

class ColorfulContainer extends StatelessWidget {
  const ColorfulContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    double height = random.nextDouble() * 300;
    double width = random.nextDouble() * 400;
    Color color = Color.fromARGB(random.nextInt(156) + 100, random.nextInt(256),
        random.nextInt(256), random.nextInt(256));
    double radius = random.nextDouble() * 50;
    return AnimatedContainer(
      height: height,
      width: width,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
