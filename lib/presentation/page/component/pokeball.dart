import 'package:flutter/material.dart';
import 'package:pokedex/presentation/page/component/white_pokeball_canvas.dart';

class PokeballWidget extends StatelessWidget {
  final double size;
  final Color color;

  const PokeballWidget({super.key, required this.size, required this.color});



  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, (size * 1.0040160642570282).toDouble()),
      painter: PokeballLogoPainter(
        color: color,
      ),
    );
  }
}
