import 'package:flutter/material.dart';
import 'package:passa_bola/main.dart';

class Purplebutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Purplebutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
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
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.darkPurple,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontFamily: AppFonts.secondaryFont,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
