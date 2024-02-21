import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';
import 'add_remove_button.dart';
import 'cart_item.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key, this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (context, index) => const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (context, index) {
        return Column(
          children: [
            TCartItem(),
            if (showAddRemoveButton) SizedBox(height: TSizes.spaceBtwItems),
            if (showAddRemoveButton) Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Extra Space
                    SizedBox(width: 70),
                    // Add Remove Buttons
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),

                // Product Total Price
                TProductPriceText(price: "256"),
              ],
            ),
          ],
        );
      },
    );
  }
}
