import 'package:flutter/cupertino.dart';

class Product extends ChangeNotifier {
  final String productType;
  final String productName;
  final String productPrice;
  final AssetImage productImage;

  Product(
    this.productType,
    this.productName,
    this.productPrice,
    this.productImage,
  );

  /// #Remove Currency Symbol Method
  String removeCurrencySymbol(String text) {
    return text.replaceAll(RegExp(r'[^0-9]'), '');
  }

  /// Total Price
  int get totalPrice => int.parse(
        removeCurrencySymbol(productPrice)
      );

  /// User cart
  final List<Product> _userCart = [];

  /// Get user cart
  List<Product> get userCart => _userCart;

  void addItemToCart(Product product) {
    userCart.add(product);
    notifyListeners();
  }

  /// Remove item from cart
  void removeItemFromCart(Product product) {
    userCart.remove(product);
    notifyListeners();
  }
}
