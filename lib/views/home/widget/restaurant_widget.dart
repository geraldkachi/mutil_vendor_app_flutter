import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/constants/constants.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget ({super.key, required this.image, required this.logo, required this.title, required this.time, required this.rating, this.onTap});

  final String image;
  final String logo;
  final String title;
  final String time;
  final String rating;
  final void Function() ? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: onTap,
       child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          width: width * 75,
          height: 192.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite ,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(padding: EdgeInsets.all(8.w),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: SizedBox(
                      height: 112.h,
                      width: width * 0.8,
                      child: Image.network(image),
                      ),
                  )
                ],
              ),
              ),
            ],
          ),
        ),
       ),
    );
  }
}