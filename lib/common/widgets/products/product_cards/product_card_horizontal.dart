import 'package:e_commerce/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/t_circular_icon.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_with_verified_icon.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.softGrey,
      ),
      child: Row(
        children: [
          // Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                const SizedBox(
                    width: 120,
                    height: 120,
                    child: TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true)),

                // Sale Tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text("25%", style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                  ),
                ),

                // Favourite Icon Button
                const Positioned(
                  right: 0,
                  top: 0,
                  child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          // Details
           SizedBox(
             width: 172,
             child: Padding(
               padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
               child: Column(
                 children: [
                   const Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       TProductTitleText(title: "Green Nike Air Shoes lreasdf poj faspoj pjfda", smallSize: true),
                       SizedBox(height: TSizes.spaceBtwItems / 2),
                       TBrandTitleWithVerifiedIcon(title: "Nike"),
                     ],
                   ),

                   const Spacer(),

                   // Price Row
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const Flexible(child: TProductPriceText(price: '35.5')),

                       // Add to Cart
                       Container(
                         decoration: const BoxDecoration(
                           color: TColors.dark,
                           borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(TSizes.cardRadiusMd),
                             bottomRight: Radius.circular(TSizes.productImageRadius),
                           ),
                         ),
                         child: const SizedBox(
                           width: TSizes.iconLg * 1.2,
                           height: TSizes.iconLg * 1.2,
                           child: Center(
                             child: Icon(Iconsax.add, color: TColors.white),
                           ),
                         ),
                       )
                     ],
                   ),
                 ],
               ),
             ),
           ),


        ],
      ),
    );
  }
}
