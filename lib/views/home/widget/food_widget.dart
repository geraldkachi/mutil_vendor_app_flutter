import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/constants.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.time,
      required this.price,
      this.onTap});

  final String image;
  final String title;
  final String time;
  final double? price;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          width: width * 75,
          height: 180.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Stack(
                  children: [
                    ClipRRect(
                    borderRadius: BorderRadius.circular(12.w),
                    child: SizedBox( 
                      height: 112.h,
                      width: width * 0.8,
                      child: Image.network(image, fit: BoxFit.fitWidth),
                    ),
                  ),]
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                              text: title.toString(),
                              style: TextStyle(
                                  fontSize: 12.w,
                                  color: kDark,
                                  fontWeight: FontWeight.w600)),
                          ReusableText(
                              text: "\$ $price",
                              style: TextStyle(
                                  fontSize: 12.w,
                                  color: kDark,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                              text: "Delivery time",
                              style: TextStyle(
                                  fontSize: 9.w,
                                  color: kDark,
                                  fontWeight: FontWeight.w500)),
                          ReusableText(
                              text: time.toString(),
                              style: TextStyle(
                                  fontSize: 9.w,
                                  color: kDark,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
