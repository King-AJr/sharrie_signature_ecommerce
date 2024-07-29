import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';
import 'package:sharrie_signature_ecommerce/views/HomeScreen.dart';
import 'package:sharrie_signature_ecommerce/views/cart.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavigationController());
    // final darkMode = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => Container(
            decoration: const BoxDecoration(
              color: MyColors.primaryBackground,
              border: Border(
                top: BorderSide(
                  color: MyColors.neutral200,
                  width: 0.3,
                ),
              ),
            ),
            child: NavigationBar(
              elevation: 0.0,
              selectedIndex: navController.selectedIndex.value,
              backgroundColor: MyColors.primaryBackground,
              indicatorColor: Colors.white.withOpacity(0.5),
              onDestinationSelected: (index) =>
                  navController.selectedIndex.value = index,
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
                NavigationDestination(
                    icon: Icon(Icons.shopping_bag_outlined), label: 'Orders'),
                NavigationDestination(
                    icon: Icon(Icons.person_2_outlined), label: 'Profile'),
              ],
            ),
          ),
        ),
        body: Obx(
            () => navController.screens[navController.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const CartScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.purple,
    ),
  ];
}
