import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/constants/uidata.dart';
import 'package:multi_vendor_food/views/home/widget/category_widget.dart';

class CategoryList  extends StatelessWidget {
  const CategoryList ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (index) {
          var category = categories[index];
          return CategoryWidget(category: category);
        }),
      ),
    );
  }
}
