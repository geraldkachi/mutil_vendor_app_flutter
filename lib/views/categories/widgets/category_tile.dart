
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/constants.dart';
import 'package:multi_vendor_food/views/categories/category_page.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({super.key, required this.category});

  var category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Get.to(() => const CategoryPage(),
      transition: Transition.fade,
      duration: const Duration(milliseconds: 900)
      ),
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGreyLight,
        child: Image.network(category["imageUrl"], fit: BoxFit.contain,),
      ),
      title: ReusableText(style: const TextStyle(fontSize: 12, color: kGrey, fontWeight: FontWeight.w600), text: category["title"],),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: kGrey, size: 15.r )
    );
  }
}