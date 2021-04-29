

import 'package:flutter/material.dart';
import 'package:flutter_cart_bloc/bloc/cart_bloc.dart';

class CartProvider extends InheritedWidget {
  final CartBloc cartBloc;

  CartProvider({
    Key key,
    CartBloc cartBloc,
    Widget child,
  })  : cartBloc = cartBloc ?? CartBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static CartBloc of(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType(aspect: CartProvider) as CartProvider)
          .cartBloc;
}