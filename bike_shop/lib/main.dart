import 'package:bike_shop/screens/home_page.dart';
import 'package:bike_shop/services/images.dart';
import 'package:bike_shop/services/strings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/product.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Product>(
      create: (_) => Product(
        CustomStrings.mountainBike,
        CustomStrings.peugotLR01,
        CustomStrings.price1999,
        CustomImages.peugotBicycle,
      ),
      child: const MaterialApp(
        title: 'Your App',
        home: HomePage(),
      ),
    );
  }
}
