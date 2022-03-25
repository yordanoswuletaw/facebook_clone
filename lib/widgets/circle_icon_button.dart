import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton(
      {Key? key,
      required this.icon,
      required this.size,
      required this.onPrussed})
      : super(key: key);

  final IconData icon;
  final double size;
  final VoidCallback onPrussed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPrussed,
        icon: Icon(
          icon,
          size: size,
          color: Colors.black,
        ),
      ),
    );
  }
}
