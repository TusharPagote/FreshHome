import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = [
      "Tikkas & Kebabs",
      "Cold Cuts",
      "Siignature Snacks",
      "Readt-to-Cook",
      "Fish & Seafood",
      "Marine Water Fish",
      "Prawn Fish",
      "Fresh Water Fish",
      "Poutry",
      "Mutton",
      "Steak & Fillets",
      "Boneless Fillets",
      "Exotic",
      "Combo Pack",
      "Eggs",
      "Batter & Potatos"
    ];
    return
        // Scaffold(
        //   body:
        Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Center(
            child: Text(
          "Categories",
          style: TextStyle(fontSize: 18),
        )),
        const SizedBox(
          height: 30,
        ),
        // Container(
        //   height: 150,
        //   width: 120,
        //   decoration: const BoxDecoration(color: Colors.red),
        //   child: Column(
        //     children: const [
        //       CircleAvatar(
        //         radius: 45,
        //         backgroundImage: NetworkImage(
        //             'https://www.allrecipes.com/thmb/5JVfA7MxfTUPfRerQMdF-nGKsLY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/25473-the-perfect-basic-burger-DDMFS-4x3-56eaba3833fd4a26a82755bcd0be0c54.jpg'),
        //       ),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       Text("Tikkas & Kebabs")
        //     ],
        //   ),
        // ),
        Expanded(
          child: GridView.builder(
              padding: EdgeInsets.all(10),
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Container(
                  // padding: EdgeInsets.only(top: 40),
                  margin: EdgeInsets.only(top: 10),
                  height: 150,
                  // width: 100,
                  // decoration: const BoxDecoration(color: Colors.red),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://www.allrecipes.com/thmb/5JVfA7MxfTUPfRerQMdF-nGKsLY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/25473-the-perfect-basic-burger-DDMFS-4x3-56eaba3833fd4a26a82755bcd0be0c54.jpg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        items[index],
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
    // );
  }
}
