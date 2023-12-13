import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../services/colors.dart';
import '../services/fonts.dart';

class CustomListTile extends StatefulWidget {
  final String titleText;
  final String subtitleText;
  final ImageProvider leadingImage;
  final ImageProvider subtitleFirstImage;
  final ImageProvider subtitleSecondImage;

  const CustomListTile({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    required this.leadingImage,
    required this.subtitleFirstImage,
    required this.subtitleSecondImage,
  }) : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    int totalPrice = Provider.of<Product>(context).totalPrice;



    /// #Add To Cart Dialog
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

    /// #Remove From Cart Dialog
    void removeItemFromCart() {
      final product = Provider.of<Product>(context, listen: false);
      Provider.of<Product>(context, listen: false).removeItemFromCart(product);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Center(
            child: Text(
              "Item removed from the basket",
              style: TextStyle(
                fontSize: 16,
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

    /// #Remove Currency Symbol Method
    String removeCurrencySymbol(String text) {
      return text.replaceAll(RegExp(r'[^0-9]'), '');
    }

    return Container(
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.3,
            color: CustomColors.oxFF4C576F,
          ),
        ),
      ),
      child: ListTile(
        horizontalTitleGap: 40,
        minVerticalPadding: 18,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        tileColor: const Color(0xFF242C3B),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            widget.titleText,
            style: TextStyle(
              color: CustomColors.oxFFFFFFFF.withOpacity(0.87),
              fontSize: 15,
              fontFamily: CustomFonts.poppins,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.3,
            ),
          ),
        ),
        leading: Transform.scale(
          scaleX: 1.3,
          scaleY: 1.5,
          child: Container(
            padding: const EdgeInsets.all(8),
            width: 80,
            height: 120,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(-0.61, 0.79),
                end: Alignment(0.61, -0.79),
                colors: [Color(0xFF363E50), Color(0xFF4C576F)],
              ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.5),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Image(
              image: widget.leadingImage,
              width: 80.61,
              height: 59,
            ),
          ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.subtitleText,
              style: const TextStyle(
                color: Color(0xFF3C9EEA),
                fontSize: 13,
                fontFamily: CustomFonts.poppins,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.3,
              ),
            ),
            Container(
              width: 83,
              height: 33,
              decoration: ShapeDecoration(
                color: const Color(0xFF363E51),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0xFF1c222d),
                    offset: Offset(-2, -3),
                    blurRadius: 1,
                  ),
                  BoxShadow(
                    color: Color(0xFF343e51),
                    offset: Offset(2, 2),
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        counter++;
                        totalPrice += int.parse(
                          removeCurrencySymbol(widget.subtitleText),
                        );
                        addToCart();
                      });
                    },
                    child: Image(
                      image: widget.subtitleFirstImage,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Text(
                    '$counter',
                    style: TextStyle(
                      color: CustomColors.oxFFFFFFFF
                          .withOpacity(0.6000000238418579),
                      fontSize: 13,
                      fontFamily: CustomFonts.poppins,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (counter > 0) {
                          counter--;
                          totalPrice -= int.parse(
                            removeCurrencySymbol(widget.subtitleText),
                          );
                          removeItemFromCart();
                        }
                      });
                    },
                    child: Image(
                      image: widget.subtitleSecondImage,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
