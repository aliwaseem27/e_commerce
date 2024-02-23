import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text("Sports"), showBackArrow: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Banner
            const TRoundedImage(
              imageUrl: TImages.promoBanner1,
              width: double.infinity,
              applyImageRadius: true,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Sub-Categories
            // Add loop to show categories
            Column(
              children: [
                // Heading
                TSectionHeading(title: "Sports shirts", onPressed: () {}),
                const SizedBox(height: TSizes.spaceBtwItems / 2),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems),
                    itemBuilder: (context, index) => const TProductCardHorizontal(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
