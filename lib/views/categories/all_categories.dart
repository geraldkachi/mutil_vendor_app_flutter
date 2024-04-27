import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/common/background_container.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/constants.dart';
import 'package:multi_vendor_food/constants/uidata.dart';
import 'package:multi_vendor_food/views/categories/widgets/category_tile.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:  ReusableText(text: "All Categories", 
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(categories.length, (i) {
              var category = categories[i];
              return CategoryTile(category: category);
            }),
          ),
         ),
      ),
    );
  }
}
