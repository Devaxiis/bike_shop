import 'package:flutter/material.dart';

import '../services/colors.dart';
import '../services/fonts.dart';
import '../services/icons.dart';

class CustomAppBar extends StatelessWidget {
  final String text;

  const CustomAppBar({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Row(
        children: [
          const SizedBox(width: 15),
          Transform.scale(
            scale: 3,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Image(
                image: CustomIcons.arrowBack,
                width: 35,
                height: 35,
              ),
            ),
          ),
          SizedBox(width: x * 0.15),
          Text(
            text,
            style: const TextStyle(
              color: CustomColors.oxFFFFFFFF,
              fontSize: 20,
              fontFamily: CustomFonts.poppins,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.30,
            ),
          ),
        ],
      ),
    );
  }
}
