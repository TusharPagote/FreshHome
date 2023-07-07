import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freshhome/app/utils/products_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  //TODO: Implement CartController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // Add dict to store product in cart.
  var _products = {}.obs;

  get products => _products;

  // add product to cart
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
        "Product Added", 'You have added the "${product.title}" to the cart.',
        snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
  }

  // decrease the product from cart
  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => Key == product);
      // _products.removeWhere((key, value) => value == product);
    } else {
      _products[product] -= 1;
    }
  }

  // delete product
  void deleteProduct(Product product) {
    _products.removeWhere((key, value) => Key == product);
  }

  //subtotal
  // get productSubtotal => _products.entries
  //     .map((product) => product.value)
  //     .reduce((value, element) => value + element)
  //     .toString();

  productTotal() {
    return _products.length != 0
        ? products.entries
            .map((product) => product.value)
            .reduce((value, element) => value + element)
            .toString()
        : null;
  }

  // Total
  // get total => _products.entries
  //     .map((product) => product.key.discountedPrice + product.value)
  //     .toList();

  total() {
    print(_products.toString());
    return _products.length != 0
        ? _products.entries
            .map((product) => product.key.discountedPrice * product.value)
            .toList()
            .reduce((value, element) => value + element)
            .toStringAsFixed(2)
        : null;
  }
}
