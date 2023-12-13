import 'package:bike_shop/services/icons.dart';
import 'package:bike_shop/services/images.dart';
import 'package:bike_shop/services/strings.dart';
import 'package:bike_shop/views/app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../services/colors.dart';
import '../services/fonts.dart';
import '../views/custom_list_tile_view.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  int counter = 0;
  bool isPressed = false;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int totalPrice = Provider.of<Product>(context).totalPrice;

    double discountedPrice = totalPrice * 0.7;

    double y = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: CustomColors.oxFF242C3B,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// #AppBar
            const CustomAppBar(text: CustomStrings.myShoppingCart),

            /// #ListView
            ListView(
              addRepaintBoundaries: true,
              shrinkWrap: true,
              children: const [
                /// #First ListTile
                CustomListTile(
                  titleText: CustomStrings.peugotLR01,
                  subtitleText: CustomStrings.price1999,
                  leadingImage: CustomImages.peugotBicycle,
                  subtitleFirstImage: CustomIcons.plus,
                  subtitleSecondImage: CustomIcons.minus,
                ),

                /// #Second ListTile
                CustomListTile(
                  titleText: CustomStrings.pilotChromoly,
                  subtitleText: CustomStrings.price39999,
                  leadingImage: CustomImages.mikkelBechBicycle,
                  subtitleFirstImage: CustomIcons.plus,
                  subtitleSecondImage: CustomIcons.minus,
                ),

                /// #Third ListTile
                CustomListTile(
                  titleText: CustomStrings.smithTrade,
                  subtitleText: CustomStrings.price120,
                  leadingImage: CustomImages.helmet,
                  subtitleFirstImage: CustomIcons.plus,
                  subtitleSecondImage: CustomIcons.minus,
                ),
              ],
            ),

            SizedBox(height: y * 0.03),

            /// #TextField
            Container(
              clipBehavior: Clip.antiAlias,
              width: 350,
              height: 44,
              decoration: ShapeDecoration(
                color: const Color(0xFF283644),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextField(
                clipBehavior: Clip.antiAlias,
                controller: controller,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 18),
                    // child: ApplyButton(),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Column(
              children: [
                /// #SubText TextField
                Text(
                  CustomStrings.subtextTextField,
                  style: TextStyle(
                    color:
                        CustomColors.oxFFFFFFFF.withOpacity(0.6000000238418579),
                    fontSize: 15,
                    fontFamily: CustomFonts.poppins,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.30,
                  ),
                ),

                const SizedBox(height: 15),

                /// #FirstSubText
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1),
                    Text(
                      CustomStrings.subtotal,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF
                            .withOpacity(0.8700000047683716),
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.30,
                      ),
                    ),
                    isPressed
                        ? const SizedBox(width: 146)
                        : const SizedBox(width: 185),
                    Text(
                      isPressed == true && controller.text == "Bike"
                          ? "$totalPrice"
                          : "",
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF
                            .withOpacity(0.8700000047683716),
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.30,
                      ),
                    ),
                    const SizedBox(width: 1),
                  ],
                ),

                const SizedBox(height: 5),

                /// #Second SubText
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1),
                    Text(
                      CustomStrings.deliveryFee,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF
                            .withOpacity(0.8700000047683716),
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.30,
                      ),
                    ),
                    isPressed
                        ? const SizedBox(width: 114)
                        : const SizedBox(width: 127),
                    Text(
                      isPressed == true && controller.text == "Bike"
                          ? r"$0"
                          : "",
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF
                            .withOpacity(0.8700000047683716),
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.30,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),

                const SizedBox(height: 5),

                /// #Third SubText
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1),
                    Text(
                      CustomStrings.discount,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF
                            .withOpacity(0.8700000047683716),
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.30,
                      ),
                    ),
                    isPressed
                        ? const SizedBox(width: 160)
                        : const SizedBox(width: 180),
                    Text(
                      isPressed == true && controller.text == "Bike"
                          ? "35%" //35% Skidka
                          : "", //
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF
                            .withOpacity(0.8700000047683716),
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.30,
                      ),
                    ),
                    const SizedBox(width: 9),
                  ],
                ),

                const SizedBox(height: 18),

                /// #Total Price Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      CustomStrings.total,
                      style: TextStyle(
                        color: CustomColors.oxFFFFFFFF
                            .withOpacity(0.8700000047683716),
                        fontSize: 15,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.30,
                      ),
                    ),
                    isPressed
                        ? const SizedBox(width: 83)
                        : const SizedBox(width: 90),
                    Text(
                      isPressed == true && controller.text == "Bike"
                          ? "$discountedPrice" //35% Skidka
                          : "$totalPrice", // total Price
                      style: const TextStyle(
                        color: Color(0xFF38B8EA),
                        fontSize: 17,
                        fontFamily: CustomFonts.poppins,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.30,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: y * 0.02),

            /// #Checkout Button
            Container(
              width: 174,
              height: 44,
              decoration: ShapeDecoration(
                color: const Color(0xFF283644),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    isPressed = !isPressed;
                    setState(() {});
                  },
                  child: isPressed == false
                      ? Row(
                          children: [
                            const Image(
                              image: CustomIcons.arrowForward,
                              alignment: Alignment.centerLeft,
                            ),
                            const SizedBox(width: 20),
                            Text(
                              CustomStrings.checkout,
                              style: TextStyle(
                                color: CustomColors.oxFFFFFFFF
                                    .withOpacity(0.6000000238418579),
                                fontSize: 15,
                                fontFamily: CustomFonts.poppins,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.08,
                              ),
                            ),
                          ],
                        )
                      : const Image(
                          image: CustomIcons.arrowForward,
                          alignment: Alignment.centerRight,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
