import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:e_commerce/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
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

