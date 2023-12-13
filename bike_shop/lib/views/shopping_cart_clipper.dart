import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import '../services/colors.dart';
import '../services/fonts.dart';

class BicycleCartClipper extends StatelessWidget {
  final ImageProvider image;
  final IconData icon;
  final String productType;
  final String productName;
  final String productPrice;
  final Color iconColor;

  const BicycleCartClipper({
    super.key,
    required this.image,
    required this.icon,
    required this.productType,
    required this.productName,
    required this.productPrice,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;

    return ClipPath(
      clipper: CardClipper(),
      child: SizedBox(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4.6,
            sigmaY: 4.6,
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.14),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  offset: Offset(0, 4),
                  blurRadius: 30,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                /// # Heart Icon
                Padding(
                  padding: EdgeInsets.only(left: x * 0.33),
                  child: Icon(
                    icon,
                    size: 20,
                    color: iconColor,
                  ),
                ),

                /// #Image Bicycle
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image(
                    image: image,
                    width: 120,
                    height: 90,
                  ),
                ),

                /// # SubText
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: y * 0.01),

                      /// #Product Type
                      Text(
                        productType,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6000000238418579),
                          fontSize: 13,
                          fontFamily: CustomFonts.poppins,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.30,
                        ),
                      ),

                      /// #Product Name
                      Text(
                        productName,
                        style: const TextStyle(
                          color: CustomColors.oxFFFFFFFF,
                          fontSize: 15,
                          fontFamily: CustomFonts.poppins,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.30,
                        ),
                      ),

                      /// #Product Price
                      Text(
                        productPrice,
                        style: TextStyle(
                          color: CustomColors.oxFFFFFFFF
                              .withOpacity(0.6000000238418579),
                          fontSize: 13,
                          fontFamily: CustomFonts.poppins,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path()
      ..arcTo(Rect.fromCircle(center: const Offset(25, 50), radius: 25), pi,
          pi / 2, false)
      ..lineTo(width - 25, 0)
      ..arcTo(Rect.fromCircle(center: Offset(width - 25, 25), radius: 25),
          -pi / 2, pi / 2, false)
      ..lineTo(width, height - 50)
      ..arcTo(
          Rect.fromCircle(center: Offset(width - 25, height - 50), radius: 25),
          0,
          pi / 2,
          false)
      ..lineTo(25, height)
      ..arcTo(Rect.fromCircle(center: Offset(25, height - 25), radius: 25),
          pi / 2, pi / 2, false)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
