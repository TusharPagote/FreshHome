import 'package:flutter/material.dart';
import 'package:freshhome/app/widgets/account_items.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Center(
                        child: Text(
                      "Hi, Guest",
                      style: TextStyle(fontSize: 18),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Please Login ro enjoy your shopping",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AccountItems(
                  icon: Icons.settings,
                  title: "Earn Rewards",
                  subtitle: "Invite friend and earn rewards"),
              AccountItems(
                  icon: Icons.contact_emergency,
                  title: "Contact Us",
                  subtitle: "Help regarding your recent purchase"),
              SizedBox(
                height: 20,
              ),
              AccountItems(
                  icon: Icons.question_answer,
                  title: "FAQs",
                  subtitle: "Frequently Asked Questions"),
              AccountItems(
                icon: Icons.terminal,
                title: "Terms & Conditions",
              ),
              AccountItems(
                icon: Icons.privacy_tip,
                title: "Privacy Policy",
              ),
              AccountItems(
                icon: Icons.bookmark_add,
                title: "Seller Information",
              ),
              AccountItems(
                icon: Icons.login,
                title: "Login",
              ),
              AccountItems(
                icon: Icons.wordpress,
                title: "Change Country",
              ),
            ],
          ),
        ));
  }
}
