import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String text;

  const ReuseableContainer({super.key, 
    required this.height,
    required this.width,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
