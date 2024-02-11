import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../navigation_menu.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(onPressed: ()=> Get.offAll(()=> const NavigationMenu()), icon: Iconsax.add),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TGridLayout(itemCount: 5, itemBuilder: (context, index){
              return const TProductCardVertical();
            })
          ],
        ),
      ),
    );
  }
}
