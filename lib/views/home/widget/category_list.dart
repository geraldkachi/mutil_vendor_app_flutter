import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/constants.dart';
import 'package:multi_vendor_food/constants/uidata.dart';
import 'package:multi_vendor_food/controllers/category_controller.dart';
import 'package:multi_vendor_food/views/categories/all_categories.dart';

class CategoryList  extends StatelessWidget {
  const CategoryList ({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories .length, (index) {
          var category = categories[index];
          return CategoryWidget(category: category);
        }),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  CategoryWidget({ super.key, this.category});
 
  var category;

  @override
  Widget build(BuildContext context) {
     final controller = Get.put(CategoryController());
    return GestureDetector(
       onTap: () {
        if(controller.categoryValue == category['_id']) {
          controller.updateCategory = '';
          controller.updateTitle = '';
        }  else if(category['title'] == 'More') {
            Get.to(() => const AllCategory(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 900)
            );
        } else {
          controller.updateCategory = category['_id'];
          controller.updateTitle = category['title'];
        }
       },
      child: Obx(() => Container(
      margin: EdgeInsets.only(right: 5.w),
      padding: EdgeInsets.only(top: 4.w),
      width: width * 0.19,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: controller.categoryValue == category['_id'] ? kSecondary : kOffWhite, width: 3.w)
      ),
      child: Column(
        children: [
          SizedBox(
            height: 35.h,
            child: Image.network(category['imageUrl'], fit: BoxFit.contain,),
          ),
          ReusableText(text: category['title'], style: const TextStyle(fontSize: 12, color: kDark, fontWeight: FontWeight.normal))
        ],
      ),
    ),)
    );
  }
}