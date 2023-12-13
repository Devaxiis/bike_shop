import 'package:flutter/material.dart';

import '../services/fonts.dart';
import '../services/strings.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 220),
      child: Container(
        width: 114,
        height: 44,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0, -2),
            end: const Alignment(0.4, 2),
            colors: [
              const Color(0xFF34C8E8).withOpacity(0.8),
              const Color(0xFF4E4AF2).withOpacity(0.8),
            ],
          ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0xFF191F2B),
              blurRadius: 60,
              offset: Offset(0, 30),
              spreadRadius: 0,
            ),
          ],
        ),
        child: const Center(
          child: Text(
            CustomStrings.apply,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontFamily: CustomFonts.poppins,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.08,
            ),
          ),
        ),
      ),
    );
  }
}