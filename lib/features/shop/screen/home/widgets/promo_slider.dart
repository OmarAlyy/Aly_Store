import 'package:aly_store/common/widgets/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../../../common/widgets/images/t_roumd_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/home_controller.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key,  required this.banners});

  final List<String> banners ;
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());
    return Column(
      children: [
        /// Carousel Slider
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                controller.updatePageIndicator(index),
          ),
          items : banners.map((url) => TRoundedImage(imageUrl: url)).toList(),

        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        /// Indicator Dots
        Center(
          child: Obx(
                () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                final isActive = controller.carousalCurrentIndex.value == index;
                return CircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: isActive ? TColors.primary : TColors.grey,
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
