import 'package:e_commerce/common/widgets/brands/t_brand_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/t_rounded_container.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brands with Products Count
          TBrandCard(showBorder: false),

          // Brand Top 3 Product Images
          Row(
            children: images
                .map(
                  (image) => Expanded(
                    child: TRoundedContainer(
                      height: 100,
                      backgroundColor: dark ? TColors.darkerGrey : TColors.light,
                      margin: EdgeInsets.only(right: TSizes.sm),
                      padding: EdgeInsets.all(TSizes.md),
                      child: Image(image: AssetImage(image), fit: BoxFit.contain),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
