import 'package:flutter/material.dart';

import '../services/colors.dart';
import '../services/fonts.dart';
import '../services/strings.dart';
import 'custom_elevated_button_view.dart';

class BottomAddToCartButton extends StatelessWidget {
  const BottomAddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const ShapeDecoration(
        color: CustomColors.oxFF212734,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.5, color: CustomColors.oxFF28303F),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0xFF262E3D),
            blurRadius: 30,
            offset: Offset(0, -5),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text(
            CustomStrings.price1999,
            style: TextStyle(
              color: CustomColors.oxFF3D9CEA,
              fontSize: 24,
              fontFamily: CustomFonts.poppins,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.30,
            ),
          ),
          CustomElevatedButton(
            text: CustomStrings.addToCart,
            height: 44,
            width: 160,
          ),
        ],
      ),
    );
  }
}
