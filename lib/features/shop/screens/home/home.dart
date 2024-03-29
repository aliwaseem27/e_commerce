import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // SearchBar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(title: "Popular Categories", showActionButton: false, textColor: TColors.white),
                        SizedBox(height: TSizes.spaceBtwItems),
                        HomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Popular Products
                  TSectionHeading(title: "Popular Products", onPressed: () => Get.to(() => const AllProductsScreen())),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TGridLayout(itemCount: 4, itemBuilder: (context, index) => const TProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
