import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/constants.dart';

class Heading extends StatelessWidget {
  const Heading ({super.key, required this.text, this.onTop});

  final String text;
  final void Function()? onTop;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.only(top:10.h),
          child: ReusableText(style: TextStyle(fontSize: 12.w, color: kDark, fontWeight: FontWeight.bold), text: text),
          ),

          GestureDetector(
            onTap: onTop,
            child: Icon(
              AntDesign.appstore1,
              color: kSecondary,
              size: 20.sp ,
            ),
          )
        ],
      ),
    );
  }
}