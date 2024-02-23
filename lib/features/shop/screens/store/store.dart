import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/appbar/t_tab_bar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/all_brands/all_brands.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/t_category_tab.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/brands/t_brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                        TSectionHeading(title: "Featured Brands", showActionButton: true, onPressed: () => Get.to(()=> const AllBrandsScreen())),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (context, index) {
                              return const TBrandCard();
                            }),
                      ],
                    ),
                  ),

                  // Tabs
                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text("Sports")),
                      Tab(child: Text("Furniture")),
                      Tab(child: Text("Electronics")),
                      Tab(child: Text("Clothes")),
                      Tab(child: Text("Cosmetics")),
                    ],
                  )),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
