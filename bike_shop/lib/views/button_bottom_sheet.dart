import 'package:flutter/material.dart';

import '../services/colors.dart';
import '../services/fonts.dart';


class ButtonBottomSheet extends StatelessWidget {
  final String text;
  final bool isActive;

  const ButtonBottomSheet({
    Key? key,
    required this.text,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 142,
      height: 43,
      decoration: isActive
          ? ShapeDecoration(
        color: const Color(0xFF28303F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0xFF252A39),
            blurRadius: 8,
            offset: Offset(6, 6),
            spreadRadius: 3,
          ),
          BoxShadow(
            color: Color(0xFF38435A),
            blurRadius: 8,
            offset: Offset(-6, -6),
            spreadRadius: 3,
          ),
        ],
      )
          : ShapeDecoration(
        color: const Color(0xFF28303F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0xFF1c222d),
            offset: Offset(-3, -4),
            blurRadius: 1,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0xFF343e51),
            offset: Offset(2, 3),
            blurRadius: 1,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isActive
                ? CustomColors.oxFFFFFFFF.withOpacity(0.6)
                : CustomColors.oxFFFFFFFF,
            fontSize: 15,
            fontFamily: CustomFonts.poppins,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.35,
          ),
        ),
      ),
    );
  }
}