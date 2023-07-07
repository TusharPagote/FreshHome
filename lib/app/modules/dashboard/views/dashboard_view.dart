import 'package:flutter/material.dart';
import 'package:freshhome/app/modules/account/views/account_view.dart';
import 'package:freshhome/app/modules/cart/views/cart_view.dart';
import 'package:freshhome/app/modules/category/views/category_view.dart';
import 'package:freshhome/app/modules/favorites/views/favorites_view.dart';
import 'package:freshhome/app/modules/home/views/home_view.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                const FavoritesView(),
                CategoryView(),
                CartView(),
                const AccountView()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              _bottomNavigationBarItem(icon: Icons.home, label: "Home"),
              _bottomNavigationBarItem(icon: Icons.favorite, label: "Favorite"),
              _bottomNavigationBarItem(
                  icon: Icons.category_outlined, label: "Category"),
              _bottomNavigationBarItem(icon: Icons.shopping_bag, label: "Cart"),
              _bottomNavigationBarItem(
                  icon: Icons.account_box, label: "Account"),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
