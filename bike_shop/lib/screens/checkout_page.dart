import 'package:bike_shop/services/fonts.dart';
import 'package:bike_shop/services/strings.dart';
import 'package:bike_shop/views/app_bar_view.dart';
import 'package:flutter/material.dart';

import '../services/colors.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.oxFF242C3B,
      body: Column(
        children: [
          const SizedBox(height: 20),
          const CustomAppBar(text: CustomStrings.checkout),
          const SizedBox(height: 20),
          Container(
            width: 350,
            height: 224,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(-0.79, 0.61),
                end: Alignment(0.79, -0.61),
                colors: [Color(0xFF363E50), Color(0xFF4C576F)],
              ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    SizedBox(width: 30),
                    Text(
                      CustomStrings.shippingAddress,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF,
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.08,
                      ),
                    ),
                    SizedBox(width: 80),
                    Text(
                      CustomStrings.england,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF,
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.08,
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(width: 30),
                    Text(
                      CustomStrings.deliveryDate,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF,
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.08,
                      ),
                    ),
                    SizedBox(width: 104),
                    Text(
                      CustomStrings.date,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF,
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.08,
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(width: 30),
                    Text(
                      CustomStrings.shippingType,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF,
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.08,
                      ),
                    ),
                    SizedBox(width: 99),
                    Text(
                      CustomStrings.typeOfShipping,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF,
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.08,
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(width: 30),
                    Text(
                      CustomStrings.shippingCosts,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF,
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.08,
                      ),
                    ),
                    SizedBox(width: 96),
                    Text(
                      CustomStrings.costs,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF,
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.08,
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
