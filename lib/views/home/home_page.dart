import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/common/custom_appbar.dart';
import 'package:multi_vendor_food/common/custom_container.dart';
import 'package:multi_vendor_food/common/heading.dart';
import 'package:multi_vendor_food/constants/constants.dart';
import 'package:multi_vendor_food/views/home/all_fastest_foods.dart';
import 'package:multi_vendor_food/views/home/all_nearby-restaurants.dart';
import 'package:multi_vendor_food/views/home/recommendations.dart';
import 'package:multi_vendor_food/views/home/widget/category_list.dart';
import 'package:multi_vendor_food/views/home/widget/food_list.dart';
import 'package:multi_vendor_food/views/home/widget/nearby_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: const CustomAppBar(),
        ),
        body: SafeArea(
            child: CustomContainer(
                containerContent: Column(
          children: [
            const CategoryList(),
            Heading(text: "Nearby Restaurant", onTop: () {
              Get.to(() => const AllNearbyRestaurants(),
              transition: Transition.cupertino,
              duration: const Duration(milliseconds: 900)
              );
            }),
            const NearbyRestaurants(),
            Heading(text: "Try Something New ", onTop: () {
              Get.to(() => const Recommendations(),
              transition: Transition.cupertino,
              duration: const Duration(milliseconds: 900)
              );
            }),
            const FoodList(),
            Heading(text: "Food Closer to you", onTop: () {
              Get.to(() => const AllFastestFoods(),
              transition: Transition.cupertino,
              duration: const Duration(milliseconds: 900)
              );
            }),
            const FoodList(),
          ],
        ))));
  }
}
