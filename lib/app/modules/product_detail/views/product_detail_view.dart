import 'package:flutter/material.dart';
import 'package:freshhome/app/widgets/app_icon.dart';
import 'package:freshhome/app/widgets/big_text.dart';
import 'package:freshhome/app/widgets/highlighted_text.dart';

import 'package:get/get.dart';

import '../../../utils/dimentions.dart';
import '../../../widgets/heading.dart';
import '../../../widgets/small_text.dart';
import '../controllers/product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  const ProductDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // background image
        Positioned(
          left: -1,
          right: -1,
          child: Container(
            width: double.maxFinite,
            height: 350,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.thespruceeats.com/thmb/PEM9oD2Us3ZbYDDeFqEnrPneFxc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/goat-mutton-curry-1957594-hero-01-afaf638173cd47d595c7ad99a018cf01.jpg"))),
          ),
        ),
        // icon widget
        Positioned(
          top: 40,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () => Get.back(),
                  child: AppIcon(icon: Icons.arrow_back_ios_new)),
              Row(
                children: [
                  AppIcon(icon: Icons.favorite_border),
                  SizedBox(
                    width: 30,
                  ),
                  AppIcon(icon: Icons.call)
                ],
              )
            ],
          ),
        ),
        // // introduction of food
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: 320,
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),

            // from introduction
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading(
                            text:
                                "Sail Fish / Olaa Meen - Fillet (240g to 260g Pack)"),
                        const SizedBox(
                          height: 20,
                        ),
                        HighlightedText(text: "Pre-Cleaned Fross Weight 700g"),
                        const SizedBox(
                          height: 10,
                        ),
                        HighlightedText(text: "Net Weight 240g-260g"),
                        const SizedBox(
                          height: 20,
                        ),
                        SmallText(
                            text:
                                "I always thought making mutton curry is a long and laborious process that needs hours of prep and cooking time. But you shouldn't have to wait so much for good things in life! This mutton curry recipe uses onions and tomatoes as the base, which is then flavoured using different whole and ground spices. The hero ingredient of this recipe is the meat masala (different from curry powder most commonly available abroad), responsible for giving this whole dish that distinctive warm and spicy flavour.I always thought making mutton curry is a long and laborious process that needs hours of prep and cooking time. But you shouldn't have to wait so much for good things in life! This mutton curry recipe uses onions and tomatoes as the base, which is then flavoured using different whole and ground spices. The hero ingredient of this recipe is the meat masala (different from curry powder most commonly available abroad), responsible for giving this whole dish that distinctive warm and spicy flavour. "),
                        const SizedBox(
                          height: 20,
                        ),
                        BigText(text: "Storage Instruction"),
                        SmallText(
                            text:
                                "store under refrigaration at 4 degree Celcius or below, in hygienic condition."),
                        const SizedBox(
                          height: 20,
                        ),
                        BigText(text: "Marketed By"),
                        SmallText(
                            text:
                                "Freshtohome Food Private Limited NO 201, 2nd Floor , Carlton Tower NO. 1 old Airport Road."),
                      ],
                    ),
                  )),
                )
              ],
            ),
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        height: Dimensions.getHeight(80),
        padding: EdgeInsets.only(
            top: Dimensions.getHeight(10),
            bottom: Dimensions.getHeight(10),
            left: Dimensions.getWidth(20),
            right: Dimensions.getWidth(20)),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0,
              spreadRadius: 5.0,
              offset: Offset(
                5.0,
                5.0,
              ),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Rs. 525",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            Container(
                padding: EdgeInsets.only(
                    top: Dimensions.getHeight(15),
                    bottom: Dimensions.getHeight(15),
                    left: Dimensions.getWidth(45),
                    right: Dimensions.getWidth(45)),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.circular(Dimensions.getWidth(10))),
                child: Heading(
                  text: "Add",
                  color: Colors.white,
                  size: 18,
                )),
          ],
        ),
      ),
    );
  }
}
