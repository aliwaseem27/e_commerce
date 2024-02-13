import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/t_circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Ali Waseem",
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),
      ),
      subtitle: Text(
        "ali.waseem27@gmail.com",
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: () => Get.to(()=> const ProfileScreen()),
        icon: const Icon(Iconsax.edit, color: TColors.white),
      ),
    );
  }
}