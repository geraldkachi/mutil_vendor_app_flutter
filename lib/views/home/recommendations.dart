import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/common/appStyle.dart';
import 'package:multi_vendor_food/common/background_container.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/constants.dart';
import 'package:multi_vendor_food/constants/uidata.dart';
import 'package:multi_vendor_food/views/home/widget/food_tile.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         
      body: BackgroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(foods .length, (i) {
              var food = foods[i];
              return FoodTile(food: food);
            }),
          ),
        ),
      ),
    );
  }
}