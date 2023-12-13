import 'package:bike_shop/models/product.dart';
import 'package:bike_shop/services/images.dart';
import 'package:bike_shop/services/strings.dart';


class ProductData {
  static final List<Product> shop = [
    /// #First Product
    Product(
      CustomStrings.roadBike,
      CustomStrings.peugotLR01,
      CustomStrings.price1999,
      CustomImages.peugotBicycle,
    ),

    /// #Second Product
    Product(
      CustomStrings.roadHelmet,
      CustomStrings.smithTrade,
      CustomStrings.price120,
      CustomImages.helmet,
    ),

    /// #Third Product
    Product(
      CustomStrings.roadHelmet,
      CustomStrings.smithTrade,
      CustomStrings.price120,
      CustomImages.helmet,
    ),

    /// #Fourth Product
    Product(
      CustomStrings.mountainBike,
      CustomStrings.pilotChromoly,
      CustomStrings.price1999,
      CustomImages.mikkelBechBicycle,
    ),
  ];
}