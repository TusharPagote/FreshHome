import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freshhome/app/modules/listwidget/views/listwidget_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final List items = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // APPBAR
                Container(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 25, bottom: 25),
                  // height: 150,
                  decoration: const BoxDecoration(color: Colors.green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "440017",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Nagpur",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.food_bank_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "Type product name to search",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),

                // LISTVIEW
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        // margin: const EdgeInsets.only(top: 15, left: 15),
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            width: 300,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://ecomeye.com/wp-content/uploads/2021/08/freshmenu.jpg"),
                                  fit: BoxFit.cover,
                                )),
                            child: const Center(child: Text("data")),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  height: 120,
                  width: 350,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.yourstory.com/cs/1/159ee560ca5411eaa3a3a7a179960a6c/Food-Ordering-App-FoodPanda-1595229221308.jpg?fm=png&auto=format&w=800&blur=500"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                ListwidgetView(text: "Flash sales"),
                ListwidgetView(text: 'Trending Products'),
                
              ],
            ),
          )
        ],
      ),

      // body: SingleChildScrollView(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       // APPBAR

      //       Container(
      //         padding: const EdgeInsets.only(
      //             left: 25, right: 25, top: 45, bottom: 25),
      //         // height: 150,
      //         decoration: const BoxDecoration(color: Colors.green),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Row(
      //                   children: [
      //                     const Icon(
      //                       Icons.location_on_outlined,
      //                       color: Colors.white,
      //                     ),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: const [
      //                         Text(
      //                           "440017",
      //                           style: TextStyle(color: Colors.white),
      //                         ),
      //                         Text(
      //                           "Nagpur",
      //                           style: TextStyle(
      //                               fontSize: 12, color: Colors.white),
      //                         )
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //                 const Icon(
      //                   Icons.food_bank_outlined,
      //                   color: Colors.white,
      //                 )
      //               ],
      //             ),
      //             const SizedBox(
      //               height: 20,
      //             ),
      //             Row(
      //               children: [
      //                 Flexible(
      //                   child: Container(
      //                     padding: const EdgeInsets.all(10),
      //                     decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.circular(10),
      //                         color: Colors.white),
      //                     child: Row(
      //                       children: const [
      //                         Icon(
      //                           Icons.search,
      //                           color: Colors.grey,
      //                         ),
      //                         Text(
      //                           "Type product name to search",
      //                           style: TextStyle(color: Colors.grey),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 )
      //               ],
      //             )
      //           ],
      //         ),
      //       ),

      //       // LISTVIEW
      //       SingleChildScrollView(
      //         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      //         child: Column(
      //           children: [
      //             Container(
      //               height: 180,
      //               // margin: const EdgeInsets.only(top: 15, left: 15),
      //               child: ListView.builder(
      //                 itemCount: 10,
      //                 scrollDirection: Axis.horizontal,
      //                 itemBuilder: (context, index) => Container(
      //                   width: 300,
      //                   margin: const EdgeInsets.all(10),
      //                   decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(10),
      //                       color: Colors.red,
      //                       image: const DecorationImage(
      //                         image: NetworkImage(
      //                             "https://ecomeye.com/wp-content/uploads/2021/08/freshmenu.jpg"),
      //                         fit: BoxFit.cover,
      //                       )),
      //                   child: const Center(child: Text("data")),
      //                 ),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),

      //       Container(
      //         height: 120,
      //         width: 350,
      //         margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.red,
      //           image: const DecorationImage(
      //             image: NetworkImage(
      //                 "https://images.yourstory.com/cs/1/159ee560ca5411eaa3a3a7a179960a6c/Food-Ordering-App-FoodPanda-1595229221308.jpg?fm=png&auto=format&w=800&blur=500"),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),

      //       ListwidgetView(text: "Flash sales"),
      //       ListwidgetView(text: 'Trending Products'),
      //       // list of categories

      //       // Expanded(child: CategoryView())
      //       Flexible(
      //         fit: FlexFit.loose,
      //         child: ListView(
      //           padding: const EdgeInsets.all(8),
      //           children: <Widget>[
      //             ListTile(title: Text('List 1')),
      //             ListTile(title: Text('List 2')),
      //             ListTile(title: Text('List 3')),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
