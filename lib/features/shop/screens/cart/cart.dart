import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/add_remove_button.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 8,
          separatorBuilder: (context, index) => const SizedBox(height: TSizes.spaceBtwSections),
          itemBuilder: (context, index) {
            return const Column(
              children: [
                TCartItem(),
                SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // Extra Spave
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: (){},
          child: const Text("Checkout \$256.0"),
        ),
      ),
    );
  }
}

