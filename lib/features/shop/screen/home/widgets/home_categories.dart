import 'package:flutter/material.dart';
import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  static final List<Map<String, String>> categories = [
    {'icon': TImages.shoeIcon, 'title': 'Shoes'},
    {'icon': TImages.shoeIcon, 'title': 'Shirts'},
    {'icon': TImages.shoeIcon, 'title': 'Pants'},
    {'icon': TImages.shoeIcon, 'title': 'Hats'},
    {'icon': TImages.shoeIcon, 'title': 'Bags'},
    {'icon': TImages.shoeIcon, 'title': 'Watches'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = categories[index];
          return TVerticalImageText(
            image: category['icon']!,
            title: category['title']!,
            onTap: () {
              // Handle category tap
            },
          );
        },
      ),
    );
  }
}
