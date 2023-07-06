import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Center(
            child: Text(
          "Favorites",
          style: TextStyle(fontSize: 18),
        )),
        SizedBox(
          height: 30,
        ),
        Text(
          "You do not have any favorite products",
          style: TextStyle(color: Colors.grey),
        )
      ],
    ));
  }
}
