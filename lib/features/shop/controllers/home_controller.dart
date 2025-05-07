import 'package:get/get.dart';

class HomeController extends GetxController {
  // Singleton pattern for easy access
  static HomeController get instance => Get.find<HomeController>();

  // Observable index for carousel/pageview
  final RxInt carousalCurrentIndex = 0.obs;

  // Method to update the indicator value
  void updatePageIndicator(int index) {
    carousalCurrentIndex.value = index;
  }
}
