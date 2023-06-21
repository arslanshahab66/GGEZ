import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;


  const CustomTextField({
    Key? key,
    required this.hintText,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        decoration: InputDecoration(
        
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xff54586B),
            fontFamily: 'SF-Pro',
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff8296F5)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff8296F5)),
          ),
        ),
      ),
    );
  }
}
