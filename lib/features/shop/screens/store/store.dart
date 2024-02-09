import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/t_brand_title_with_verified_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              floating: true,
              pinned: true,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // SearchBar
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(
                      text: "Search in Store",
                      showBackground: false,
                      showBorder: true,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    // Featured Brands
                    TSectionHeading(title: "Featured Brands", showActionButton: true, onPressed: () {}),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: TRoundedContainer(
                              padding: EdgeInsets.all(TSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  // Icon
                                  Flexible(
                                    child: TCircularImage(
                                      image: TImages.clothIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
                                    ),
                                  ),
                                  const SizedBox(width: TSizes.spaceBtwItems / 2),

                                  // Text
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TBrandTitleWithVerifiedIcon(title: "Nike", brandTextSize: TextSizes.large),
                                        Text(
                                          "256 Products",
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context).textTheme.labelMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
