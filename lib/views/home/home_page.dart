import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/common/custom_appbar.dart';
import 'package:multi_vendor_food/common/custom_container.dart';
import 'package:multi_vendor_food/common/heading.dart';
import 'package:multi_vendor_food/constants/constants.dart';
import 'package:multi_vendor_food/views/home/widget/category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: CustomAppBar(),
        ),
        body: SafeArea(
            child: CustomContainer(
                containerContent: Column(
          children: [
            const CategoryList(),
            Heading(text: "Nearby Restaurant", onTop: () {}),
            Heading(text: "Try Something New ", onTop: () {}),
            Heading(text: "Food Closer to you", onTop: () {}),
          ],
        ))));
  }
}
