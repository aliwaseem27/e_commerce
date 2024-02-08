import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/images/rounded_image.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
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
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // SearchBar
                  TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const TSectionHeading(
                            title: "Popular Categories", showActionButton: false, textColor: TColors.white),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        HomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Popular Products
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (context, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
