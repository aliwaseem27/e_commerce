import 'package:e_commerce/features/shop/screens/product_details/widgets/image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
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
                  // Checkout Button
                  // Description
                  // Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

