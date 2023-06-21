import 'package:flutter/material.dart';

class TournamentContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String? text;
  final String? imagePath;
  final VoidCallback? onTap;
  final bool isSelected;

  const TournamentContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    this.text,
    this.imagePath,
    this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: isSelected
                    ? const Color(0xff8296F5)
                    : Colors
                        .transparent, // Use the desired color for the border
                width: 2, // Set the width of the border
              ),
            ),
            child: Stack(
              children: [
                if (imagePath != null)
                  Positioned.fill(
                    child: Image.asset(imagePath!, fit: BoxFit.fill),
                  ),
              ],
            ),
          ),
        ),
        if (text != null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              text!,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'SF-Pro',
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }
}
