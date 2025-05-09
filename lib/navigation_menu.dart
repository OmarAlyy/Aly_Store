import 'package:aly_store/features/shop/screen/home/home_screen.dart';
import 'package:aly_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget
{
    const NavigationMenu({super.key});

    @override
    Widget build(BuildContext context) 
    {
        final controller = Get.put(NavigationController());
        final isDark = THelperFunctions.isDarkMode(context);

        return Scaffold(
            bottomNavigationBar: Obx(
                () => NavigationBar(
                    height: 80,
                    elevation: 0,
                    selectedIndex: controller.selectedIndex.value,
                    onDestinationSelected: (index) =>
                    controller.selectedIndex.value = index,
                    backgroundColor: isDark ? Colors.black : Colors.white,
                    indicatorColor: isDark
                        ? Colors.white.withOpacity(0.1)
                        : Colors.black.withOpacity(0.1),
                    destinations: const[
                        NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                        NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
                        NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
                        NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
                    ]
                )
            ),
            body: Obx(() => controller.screens[controller.selectedIndex.value])
        );
    }
}

class NavigationController extends GetxController
{
    final RxInt selectedIndex = 0.obs;

    final List<Widget> screens = [
        // Replace these Containers with your actual screen widgets
        HomeScreen(),
        Container(color: Colors.purple),
        Container(color: Colors.orange),
        Container(color: Colors.blue)
    ];
}
