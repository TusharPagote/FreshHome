import 'package:flutter/material.dart';
import 'package:freshhome/app/modules/listwidget/views/listwidget_view.dart';
import 'package:freshhome/app/widgets/small_text.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    "Your Cart",
                    style: TextStyle(fontSize: 18),
                  )),
                  SizedBox(
                    height: 100,
                  ),
                  // Container(
                  //   height: 200,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           image: NetworkImage(
                  //               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9ebv8igkMbUD3-aVXwKiuvqYa01ZF-9UAEA&usqp=CAU"))),
                  // ),
                  Icon(
                    Icons.shopping_cart,
                    size: 200,
                  ),
                  SmallText(
                    text: "There are no items in your cart",
                    size: 20,
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              color: Colors.white,
              child: ListwidgetView(
                text: "Exclusive Offer for you",
              ),
            )
          ],
        ),
      ),
    );
  }
}
