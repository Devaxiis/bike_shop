import 'package:bike_shop/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/colors.dart';
import '../services/fonts.dart';


class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void addToCart() {
      final product = Provider.of<Product>(context, listen: false);
      Provider.of<Product>(context, listen: false).addItemToCart(product);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Center(
            child: Text(
              "Successfully Added",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: CustomColors.oxFFFFFFFF,
                fontFamily: CustomFonts.poppins,
              ),
            ),
          ),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: CustomColors.oxFF353F53,
              width: 0.4,
            ),
          ),
          backgroundColor: CustomColors.oxFF353F53,
          elevation: 8,
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ),
          ],
          shadowColor: Colors.grey.shade400,
        ),
      );
    }

    return GestureDetector(
      onTap: addToCart,
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: width,
        height: height,
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
            borderRadius: BorderRadius.circular(15),
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
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: CustomColors.oxFFFFFFFF,
              fontSize: 15,
              fontFamily: CustomFonts.poppins,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.30,
            ),
          ),
        ),
      ),
    );
  }
}
