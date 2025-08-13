import 'package:flutter/material.dart';
import 'package:passa_bola/main.dart';

class Input extends StatelessWidget {
  final String placeholder;
  final TextEditingController? controller;
  final bool obscureText;

  const Input({
    super.key,
    required this.placeholder,
    this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 25),
      margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(26.0),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(
              alpha: 0.3,
              blue: 0,
              green: 0,
              red: 0,
            ),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(
          color: AppColors.black,
          fontSize: 18,
          fontFamily: AppFonts.mainFont,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: const TextStyle(
            color: AppColors.darkGray,
            fontSize: 18,
            fontFamily: AppFonts.mainFont,
            fontWeight: FontWeight.bold,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(),
        ),
      ),
    );
  }
}
