import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            TProductImageSlider(),

            // Product Details
            Padding(
              padding: EdgeInsets.only(
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
                right: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & Share
                  TRatingAndShare(),

                  // Price, Title, Stock & Brand
                  TProductMetaData(),

                  // Attributes
                  TProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Checkout"),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Description
                  TSectionHeading(title: "Description", showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ReadMoreText(
                    "This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but I am just practicing and nothing else.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Show more",
                    trimExpandedText: " Less",
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // Reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(title: "Reviews(199)", onPressed: () {}),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
