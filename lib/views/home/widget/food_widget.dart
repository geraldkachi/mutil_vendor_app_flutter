import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/constants.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({super.key, required this.image, required this.logo, required this.title, required this.time, required this.price, this.onTap, required this.rating});

  final String image;
  final String logo;
  final String title;
  final String time;
  final int price;
  final int rating;
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
            color: kLightWhite,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ReusableText(text: title, style: TextStyle(fontSize: 12.w, color: kDark, fontWeight: FontWeight.w600)),
                      ReusableText(text: price.toString(), style: TextStyle(fontSize: 12.w, color: kDark, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        ReusableText( text: "Delivery time", style: TextStyle(fontSize: 9.w, color: kDark, fontWeight: FontWeight.w500)),
                        ReusableText( text: time, style: TextStyle(fontSize: 9.w, color: kDark, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        RatingBarIndicator(
                          rating: rating.toDouble(),
                          itemCount: 5,
                          itemSize: 15.w,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: kPrimary,
                            size: 12.w,
                          ),
                          unratedColor: Colors.grey,
                        ),  
                        SizedBox(width: 10.w,),
                        ReusableText(text: "+ $rating reviews and ratings", style: TextStyle(fontSize: 12.w, color: kDark, fontWeight: FontWeight.w600),)
                    ]
                  )
                   
                ]
              ),
              ),
            ],
          ),
        ),
       ),
    );
  }
}