import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final double? height;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff8296F5),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontFamily: 'SF-Pro',
              color: Color(0xff0B102C),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
