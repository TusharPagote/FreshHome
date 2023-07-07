import 'package:flutter/material.dart';
import 'package:freshhome/app/modules/cart/controllers/cart_controller.dart';
import 'package:freshhome/app/widgets/big_text.dart';

import 'package:get/get.dart';

import '../../../utils/products_model.dart';
import '../../product_detail/views/product_detail_view.dart';
import '../controllers/catalog_product_controller.dart';

class CatalogProductView extends GetView<CatalogProductController> {
  final String text;
  CatalogProductView({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () => {Get.to(const ProductDetailView())},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: BigText(text: text),
            ),
            Container(
              height: 370,
              child: ListView.builder(
                  itemCount: Product.product.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      CatalogProductCard(index: index)),
            )
          ],
        ),
      ),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;

  CatalogProductCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(Product.product[index].imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "1 pack",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  Product.product[index].title,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Product.product[index].discountedPrice.toString(),
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                        Text(
                          Product.product[index].originalPrice.toString(),
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        cartController.addProduct(Product.product[index]);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text("ADD"),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
