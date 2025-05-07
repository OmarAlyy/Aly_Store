import 'package:aly_store/common/widgets/images/t_roumd_image.dart';
import 'package:aly_store/features/shop/screen/home/widgets/home_app_bar.dart';
import 'package:aly_store/features/shop/screen/home/widgets/home_categories.dart';
import 'package:aly_store/features/shop/screen/home/widgets/promo_slider.dart';
import 'package:aly_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/search_container.dart';
import '../../../../common/widgets/primary_header_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header -- Tutorial [Section #3, Video #2]
            TPrimaryHeaderContainer(
              child: Column(
                children: const [
                  /// Appbar -- Tutorial [Section #3, Video #3]
                  THomeAppBar(),

                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Searchbar -- Tutorial [Section #3, Video #4]
                  // Add your custom search bar here
                   TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories -- Tutorial [Section #3, Video #4]
                  Padding(
                    padding:  EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        THomeCategories(),
                      ],
                    ),
                  ),
                  // Add your category list/grid here
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3])
            )
          ],
        ),
      ),
    );
  }
}
