import 'package:flutter/material.dart';
import 'package:freshhome/app/utils/products_model.dart';
import 'package:freshhome/app/widgets/big_text.dart';
import 'package:freshhome/app/widgets/heading.dart';

import 'package:get/get.dart';

import '../../../utils/dimentions.dart';
import '../../../widgets/small_text.dart';
import '../../catalog_product/views/catalog_product_view.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  // final CartController controller = Get.find();
  final CartController controller = Get.put(CartController());
  CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   color: Colors.white,
            //   child: Column(
            //     children: [
            //       const SizedBox(
            //         height: Dimensions.getHeight(20),
            //       ),
            //       const Center(
            //           child: Text(
            //         "Your Cart",
            //         style: TextStyle(fontSize: 18),
            //       )),
            //       const SizedBox(
            //         height: Dimensions.getHeight(100),
            //       ),
            //       const Icon(
            //         Icons.shopping_cart,
            //         size: 200,
            //       ),
            //       SmallText(
            //         text: "There are no items in your cart",
            //         size: 20,
            //       ),
            //       const SizedBox(
            //         height: Dimensions.getHeight(50),
            //       )
            //     ],
            //   ),
            // ),
            Obx(
              () => SizedBox(
                height: Dimensions.getHeight(500),
                child: ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: ((context, index) {
                      return CartProductCard(
                        controller: controller,
                        product: controller.products.keys.toList()[index],
                        quentity: controller.products.values.toList()[index],
                        index: index,
                      );
                    })),
              ),
            ),
            SizedBox(
              height: Dimensions.getHeight(15),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              color: Colors.white,
              child: CatalogProductView(
                text: "Exclusive Offer for you",
              ),
            ),
            SizedBox(
              height: Dimensions.getHeight(15),
            ),
            //
            CartTotal(),
          ],
        ),
      ),
    );
  }
}

// class CartView extends GetView<CartController> {
//   // final CartController controller = Get.find();
//   final CartController controller = Get.put(CartController());
//   CartView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => SizedBox(
//         height: 500,
//         child: ListView.builder(
//             itemCount: controller.products.length,
//             itemBuilder: ((context, index) {
//               return CartProductCard(
//                 controller: controller,
//                 product: controller.products.keys.toList()[index],
//                 quentity: controller.products.values.toList()[index],
//                 index: index,
//               );
//             })),
//       ),
//     );
//   }
// }

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quentity;
  final int index;
  const CartProductCard(
      {Key? key,
      required this.controller,
      required this.product,
      required this.quentity,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          padding: const EdgeInsets.all(15),
          height: Dimensions.getHeight(200),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: Dimensions.getWidth(160),
                    child: Heading(text: product.title)),
                SizedBox(
                  height: Dimensions.getHeight(20),
                ),
                BigText(
                  text: "Rs. ${product.discountedPrice.toInt()}",
                  color: Colors.green,
                  size: 18,
                ),
                SizedBox(
                  height: Dimensions.getHeight(5),
                ),
                SmallText(
                  text: "1 pack",
                  size: 12,
                ),
                SizedBox(
                  height: Dimensions.getHeight(20),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.delivery_dining,
                      size: 20,
                      color: Colors.grey,
                    ),
                    SmallText(
                      text: "Tomorrow Morning",
                      size: 13,
                    )
                  ],
                ),
                SizedBox(
                  height: Dimensions.getHeight(5),
                ),
                GestureDetector(
                  onTap: () {
                    // controller.deleteProduct(product);
                    controller.deleteProduct(Product.product[index]);
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.delete,
                        size: 20,
                        color: Colors.black54,
                      ),
                      SmallText(
                        text: "Remove",
                        size: 13,
                        color: Colors.black54,
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  height: Dimensions.getHeight(80),
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(product.imageUrl))),
                ),
                SizedBox(
                  height: Dimensions.getHeight(40),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("removed");
                        controller.removeProduct(product);
                        // controller.removeProduct(Product.product[index]);
                      },
                      child: Container(
                        width: 30,
                        height: Dimensions.getHeight(30),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.green,
                          size: 22,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SmallText(
                      text: "${quentity} pack",
                      color: Colors.green,
                      size: 12,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.addProduct(product);
                      },
                      child: Container(
                        width: 30,
                        height: Dimensions.getHeight(30),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: const Icon(
                          Icons.add,
                          color: Colors.green,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ]),
        ));
  }
}

class CartTotal extends StatelessWidget {
  final CartController controller = Get.put(CartController());
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(20),
          height: Dimensions.getHeight(55),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                text:
                    "${controller.productTotal()} item | RS. ${controller.total()}",
                color: Colors.white,
                size: 14,
              ),
              BigText(
                text: "Proceed to Checkout",
                color: Colors.white,
                size: 14,
              )
            ],
          ),
        ),
      ),
    );
  }
}
