import 'package:shop/views/orders_screen.dart';

import 'utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/views/cart_screen.dart';
import './views/products_overview_screen.dart';
import './views/product_detail_screen.dart';
import './views/cart_screen.dart';
import './providers/products.dart';
import './providers/cart.dart';
import './providers/orders.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => new Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => new Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverview(),
        routes: {
          AppRoutes.HOME: (ctx) => ProductOverview(),
          AppRoutes.PRODUCT_DATAIL: (ctx) => ProductDetailScreen(),
          AppRoutes.CART: (ctx) => CartScreen(),
          AppRoutes.ORDERS: (ctx) => OrdersScreen(),

        },
      ),
    );
  }
}
